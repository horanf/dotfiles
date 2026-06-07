-- 自动切换输入法
-- GitHub: https://github.com/keaising/im-select.nvim

return {
  "keaising/im-select.nvim",
  event = "VeryLazy",
  opts = {
    -- 默认输入法（Normal 模式）
    default_im_select = "com.apple.keylayout.ABC",
    -- 是否在退出时恢复默认输入法
    set_default_before_leave = true,
    -- 是否异步执行（避免阻塞）
    async_switch_im = true,
  },
}
