local M = {}

local function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function M.add_class()
    local file_name = vim.split(vim.fn.expand("%:t"), ".", { plain = true })[1]
    local class_name = "public class " .. file_name

    vim.cmd("normal o")
    vim.api.nvim_set_current_line(class_name)
    vim.cmd("normal o")
    vim.api.nvim_set_current_line("{")
    vim.cmd("normal o")
    vim.api.nvim_set_current_line("}")
end

return M
