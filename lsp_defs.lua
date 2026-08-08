---@meta

---@class ColorRGBA
---@field [1] number Red   (0–1)
---@field [2] number Green (0–1)
---@field [3] number Blue  (0–1)
---@field [4] number? Alpha (0–1)

---@param hex string Don't prepend the hash!!! No hash!!!!!
---@return ColorRGBA
function HEX(hex) end

---@class TextNode
---@field text string Text to be rendered
---@field text_colour? ColorRGBA Color of the text; default white
---@field text_scale? number Size of the text, default 0.55

---@class TextNodeMultiA
---@field text string Text to be rendered
---@field colour? ColorRGBA Color of this piece of text, default white
---@field scale? number Size of this piece of text, default 0.4

---@class TextNodeMultiB
---@field ref_table table Table to get the text from
---@field ref_value string Key of the field in which the text is stored
---@field colour? ColorRGBA Color of this piece of text, default white
---@field scale? number Size of this piece of text, default 0.4

---@alias TextNodes TextNode | (TextNodeMultiA | TextNodeMultiB | string)[]

---@class ButtonData
---@field id string Unique string to identify this button
---@field one_press? boolean Disables the button when it is pressed (e.g. sell buttons)
---@field effect? string Name of a function stored in `G.FUNCS` to be run when this button is pressed
---@field can? string Name of a function stored in `G.FUNCS` to be run every frame and manually modify `e.config.button`. Generally used to check if the card is currently useable.
---@field handy_insta? string Somehow sets [Handy's](https://github.com/SleepyG11/HandyBalatro) insta-use function for the card; TODO get deets
---@field title? string Title of the button, above the main text (e.g. "Sell" on the sell button)
---@field title_colour? ColorRGBA Color of the title text
---@field title_scale? number Size of the title text; default 0.4
---@field bg_colour? ColorRGBA Color of the button when active, default `G.C.ORANGE` (aka rgb hex #fda200)
---@field bg_colour_inactive? ColorRGBA Color of the button when inactive, default `G.C.UI.BACKGROUND_INACTIVE` (aka rgb hex #666666)
---@field text TextNodes|string Text of the button; a string, args for a single node, or a table of args for nodes

---@class SMODS.Joker
---@field buttons? {get_button_args: (fun(self:SMODS.Joker|table, card:SMODS.Joker|table):ButtonData|nil), (hide: fun(self:SMODS.Joker|table, card:SMODS.Joker|table):boolean|nil)}[]
---@field hide_sell_button? fun(self:SMODS.Joker|table, card:SMODS.Joker|table):boolean
---@field hide_use_button? fun(self:SMODS.Joker|table, card:SMODS.Joker|table):boolean
---@field use? fun(self:SMODS.Joker|table, card:SMODS.Joker|table):nil
---@field can_use? fun(self:SMODS.Joker|table, card:SMODS.Joker|table):boolean
