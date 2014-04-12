GitignoreSnippetsView = require './gitignore-snippets-view'

module.exports =
  gitignoreSnippetsView: null

  activate: (state) ->
    @gitignoreSnippetsView = new GitignoreSnippetsView(state.gitignoreSnippetsViewState)

  deactivate: ->
    @gitignoreSnippetsView.destroy()

  serialize: ->
    gitignoreSnippetsViewState: @gitignoreSnippetsView.serialize()
