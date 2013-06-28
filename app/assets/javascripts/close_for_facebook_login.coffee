if window.opener? and window.opener.location.hostname == window.location.hostname
  window.opener.location.reload(true)
  window.close()
