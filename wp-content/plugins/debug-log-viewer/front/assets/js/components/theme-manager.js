/* global $, localStorage, window, document */

/**
 * Debug Log Viewer Theme Manager
 * Handles switching between light and dark themes using jQuery
 */
class DebugLogViewerThemeManager {
  constructor () {
    this.STORAGE_KEY = 'debug-log-viewer-theme'
    this.THEMES = {
      LIGHT: 'light',
      DARK: 'dark',
      AUTO: 'auto'
    }

    this.init()
  }

  init () {
    // Get saved theme preference or default to auto
    const savedTheme = localStorage.getItem(this.STORAGE_KEY) || this.THEMES.AUTO
    this.applyTheme(savedTheme)

    // Set up jQuery event handlers when DOM is ready
    $(() => {
      this.setupThemeToggle()
    })

    // Listen for system theme changes when in auto mode
    if (window.matchMedia) {
      window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
        if (this.getCurrentTheme() === this.THEMES.AUTO) {
          this.applyTheme(this.THEMES.AUTO)
        }
      })
    }
  }

  /**
   * Set up the theme toggle button using jQuery
   */
  setupThemeToggle () {
    const $toggleBtn = $('#debug-log-viewer-theme-toggle')
    const $icon = $toggleBtn.find('.theme-icon')
    const $text = $toggleBtn.find('.theme-text')

    if ($toggleBtn.length === 0) return

    // Update button appearance based on current theme
    const updateToggleButton = () => {
      const isDark = this.isDarkTheme()
      $icon.removeClass('fa-moon fa-sun').addClass(isDark ? 'fa-sun' : 'fa-moon')
      $text.text(isDark ? 'Light' : 'Dark')
      $toggleBtn.attr('title', isDark ? 'Switch to Light Theme' : 'Switch to Dark Theme')
    }

    // Handle click events
    $toggleBtn.on('click', () => {
      this.toggle()
      updateToggleButton()
    })

    // Listen for theme changes from other sources
    $(window).on('debugLogViewerThemeChanged', updateToggleButton)

    // Initial update
    updateToggleButton()
  }

  /**
     * Apply theme to the page
     * @param {string} theme - 'light', 'dark', or 'auto'
     */
  /**
   * Apply theme to the page
   * @param {string} theme - 'light', 'dark', or 'auto'
   */
  applyTheme (theme) {
    // Target both the document root and the WordPress admin content area
    const root = document.documentElement
    const $wpContent = $('#wpbody-content')

    // Remove existing theme classes from both elements
    root.classList.remove('debug-log-viewer-dark-theme')
    root.classList.remove('debug-log-viewer-force-light')
    $wpContent.removeClass('debug-log-viewer-dark-theme debug-log-viewer-force-light')

    switch (theme) {
      case this.THEMES.LIGHT:
        root.classList.add('debug-log-viewer-force-light')
        $wpContent.addClass('debug-log-viewer-force-light')
        break
      case this.THEMES.DARK:
        root.classList.add('debug-log-viewer-dark-theme')
        $wpContent.addClass('debug-log-viewer-dark-theme')
        break
      case this.THEMES.AUTO:
        // Let CSS media query handle it
        break
    }

    // Save preference
    localStorage.setItem(this.STORAGE_KEY, theme)

    // Trigger custom event for other components to listen to
    $(window).trigger('debugLogViewerThemeChanged', { theme: this.getEffectiveTheme() })
  }

  /**
   * Get current theme preference
   */
  getCurrentTheme () {
    return localStorage.getItem(this.STORAGE_KEY) || this.THEMES.AUTO
  }

  /**
   * Get the effective theme (what's actually being displayed)
   */
  getEffectiveTheme () {
    const currentTheme = this.getCurrentTheme()

    if (currentTheme === this.THEMES.AUTO) {
      // Check system preference
      if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
        return this.THEMES.DARK
      }
      return this.THEMES.LIGHT
    }

    return currentTheme
  }

  /**
   * Toggle between light and dark theme
   */
  toggle () {
    const current = this.getEffectiveTheme()
    const newTheme = current === this.THEMES.LIGHT ? this.THEMES.DARK : this.THEMES.LIGHT
    this.applyTheme(newTheme)
    return newTheme
  }

  /**
   * Check if dark theme is currently active
   */
  isDarkTheme () {
    return this.getEffectiveTheme() === this.THEMES.DARK
  }
}

// Initialize theme manager when DOM is ready
$(() => {
  window.debugLogViewerTheme = new DebugLogViewerThemeManager()
})

// Export for module systems
if (typeof module !== 'undefined' && module.exports) {
  module.exports = DebugLogViewerThemeManager
}
