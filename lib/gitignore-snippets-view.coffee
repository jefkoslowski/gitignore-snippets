{View} = require 'atom'

module.exports =
class GitignoreSnippetsView extends View
  @content: ->
    @div class: 'gitignore-snippets overlay from-top', =>
      @div "The GitignoreSnippets package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "gitignore-snippets:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "GitignoreSnippetsView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
