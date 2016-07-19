command: "/usr/local/bin/node ~/Development/momentify/app.js"

render: (o) -> """
<blockquote class="quote" id="shortquote" style="opacity: 1;">
  <div class="quote-body">
    <span class="quote-body-text"></span>
      <br/>
    <span class="quote-source-text"></span>
  </div>
</blockquote>
"""

update: (output, dom) -> 
  quoteInfo = JSON.parse(output)
  $(dom).find('.quote-body-text').html("“" + quoteInfo.body + "”")
  $(dom).find('.quote-source-text').html(quoteInfo.source)



style: """
color: white
width: 100%
bottom: 0
text-align: center
font-family: "Helvetica Neue"

.quote 
    height: 57px
    margin: 0
    padding-bottom: 3px
    display: flex
    align-items: center
    text-align: center

.quote-body 
    width: 100%
    display: block
    position: relative
    font-size: 110%
    font-weight: 300

.quote-body, .quote-source 
    margin: 0
    color: rgba(255,255,255,.9)
    line-height: 115%
    transition: all .35s ease

.quote-source-text 
    margin-right: 3px
    opacity: .75
    font-size: 80%



"""
