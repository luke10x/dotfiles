local setup, comment = pcall(require, "Comment")
if not setup then
  print("Comment is desired but not installed")
  return
end

comment.setup()
