
c = -> console.log.apply console, arguments
#React = require("react")
PureRenderMixin = require('react/addons').addons.PureRenderMixin
{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline} = React.DOM
rr = -> React.createFactory(React.createClass.apply(React, arguments))
shortid = require('shortid')

button_000 = require('./button_000_.coffee')()
button_001 = require('./button_001_.coffee')()

buttons__grid = rr

    position_calculate: (i, j) ->
        grid_width = Math.floor @state.iW / @state.grid_cell_size.x
        grid_height = Math.floor @state.iH / @state.grid_cell_size.y

        top: (@state.grid_cell_size.y ) * j
        left: (@state.grid_cell_size.x ) * i

    componentDidMount: ->
        window.addEventListener 'resize', (e) =>
            @setState
                iW: window.innerWidth - @state.padding
                iH: window.innerHeight - @state.padding

    getInitialState: ->
        grid_cell_size_x = 100
        grid_cell_size_y = 100
        padding = 10
        padding: padding
        iW: window.innerWidth - (2 * padding)
        iH: window.innerHeight - (2 * padding)
        grid_cell_size: {x: grid_cell_size_x, y: grid_cell_size_y}

    render: ->
        grid_width = Math.floor @state.iW / @state.grid_cell_size.x
        grid_height = Math.floor @state.iH / @state.grid_cell_size.y

        remainder_H = (@state.iH / @state.grid_cell_size.y) - grid_height
        remainder_W = (@state.iW / @state.grid_cell_size.x) - grid_width

        div
            style:
                position: 'absolute'
                width: @state.iW - (@state.padding / 2)
                height: @state.iH - (@state.padding / 2)
                top: @state.padding
                left: @state.padding
                #border: '2px solid grey'
                #borderRadius: 7

            ,
            div
                style:
                    position: 'absolute'
                    width: '100%'
                    height: '100%'
                    top: (remainder_H / 2) * @state.grid_cell_size.y
                    left: (remainder_W / 2) * @state.grid_cell_size.x
                    right: (remainder_W / 2) * @state.grid_cell_size.x
                    bottom: (remainder_H / 2) * @state.grid_cell_size.y
                ,
                for j in [0 .. (grid_height - 1)]
                    for i in [0 .. (grid_width - 1)]
                        div
                            style:
                                position: 'absolute'
                                width: @state.grid_cell_size.x
                                height: @state.grid_cell_size.y
                                top: @position_calculate(i, j).top
                                left: @position_calculate(i, j).left
                                border: '1px solid black'
                            ,
                            if (j % 3) is 0 and (i % 3) is 0
                                input
                                    style: null
                                    type: 'button'
                                    value: 'button'
                                    ,
                            if (j % 2) is 0 and (i % 5) is 0 and (j isnt 0) and (i isnt 0)
                                div null, 'hi'
                            if (j is 5) and (i is 0)
                                div
                                    style:
                                        position: 'absolute'
                                        height: '100%'
                                        width: '100%'
                                    ,
                                    #button_000()
                                    svg
                                        width: 100
                                        height: 100
                                        ,
                                        circle
                                            cx: 50
                                            cy: 50
                                            r: 30
                            if (j is 5) and (i is 1)
                                div
                                    style:
                                        position: 'absolute'
                                        height: '100%'
                                        width: '100%'
                                    ,
                                    button_000()
                            if (j is 5) and (i is 2)
                                div
                                    style:
                                        position: 'absolute'
                                        height: '100%'
                                        width: '100%'
                                    ,
                                    button_001()
                            if (j is 5) and (i is 3)
                                div
                                    style:
                                        position: 'absolute'
                                        height: '100%'
                                        width: '100%'
                                    ,
                                    svg
                                        width: '100%'
                                        height: '100%'
                                        circle
                                            cx: 50
                                            cy: 50
                                            r: 30


module.exports = -> buttons__grid