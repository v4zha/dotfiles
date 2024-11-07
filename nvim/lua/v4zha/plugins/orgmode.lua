local status, orgmode = pcall(require, "orgmode")
if not status then
  return
end

orgmode.setup({
     org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
})
