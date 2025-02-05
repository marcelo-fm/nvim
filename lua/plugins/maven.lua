return {
  "eatgrass/maven.nvim",
  cmd = { "Maven", "MavenExec" },
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("maven").setup({
      executable = "mvn", -- `mvn` should be in your `PATH`, or the path to the maven exectable, for example `./mvnw`
      commands = { -- add custom goals to the command list
        { cmd = { "clean", "compile" }, desc = "clean then compile" },
        { cmd = { "clean", "spring-boot:run" }, desc = "clean then run spring-bot" },
        { cmd = { "spring-boot:run" }, desc = "run spring-bot" },
      },
    })
  end,
}
