local status, bufferline = pcall(require, "bufferline")
if not status then
  return
end

-- `h bufferline-configuration` to see all options
bufferline.setup {
  options = {
    numbers = "buffer_id",
  }
}