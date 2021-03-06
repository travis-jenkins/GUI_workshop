
{c, React, rr, shortid, assign, update, __react__root__} = require('../../__boiler__plate__.coffee')()

{p, div, h1, h2, h3, h4, h5, h6, span, svg, circle, rect, ul, line, li, ol, code, a, input, defs, clipPath, linearGradient, stop, g, path, d, polygon, image, pattern, filter, feBlend, feOffset, polyline, feGaussianBlur, feMergeNode, feMerge, radialGradient} = React.DOM

arrow_000 = rr

    componentDidMount: ->
        rect = React.findDOMNode(@).getBoundingClientRect()
        c 'rect', rect
        @setState
            rect_width: rect.width
            rect_height: rect.height


    render: ->
        svg
            width: '100%'
            height: '100%'
            ,
            g
                path
                    stroke: 'black'
                    strokeWidth: 10
                    d: "M #{rect.width * .3} #{rect.height / 2} H #{rect.width * .75}"
                path
                    d: "M #{rect.width / 2} #{rect.height / 2} L #{rect.width * .3} #{rect.height * .65}"
                    stroke: 'blue'
                    strokeWidth: 3
                path
                    d: "M #{rect.width / 2} #{rect.height / 2} L #{rect.width * .3} #{rect.height * .35}"
                    stroke: 'blue'
                    strokeWidth: 3
                path
                    d: "M #{rect.width * .75} #{rect.height / 2} L #{rect.width * .55} #{rect.height * .65}"
                    stroke: 'blue'
                    strokeWidth: 10
                path
                    d: "M #{rect.width * .75} #{rect.height / 2} L #{rect.width * .55} #{rect.height * .35}"
                    stroke: 'blue'
                    strokeWidth: 10


module.exports = -> arrow_000