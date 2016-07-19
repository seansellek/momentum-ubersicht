render: (o) -> """
<h1 class="time"></h1>
<div id="greeting" style="opacity: 1;"><h2>Good <span class="period"></span>, <span class="name"></span>.</h2></div>
"""

update: (output, dom) -> 
  segments = ["morning", "afternoon", "evening"]
  name = "Sean"
  date   = new Date()
  minute = date.getMinutes()
  minute = "0"+ minute if minute < 10
  hour   = date.getHours()
  timeSegment = segments[0] if 4 < hour <= 11
  timeSegment = segments[1] if 11 < hour <= 17
  timeSegment = segments[2] if 17 < hour <= 24 || hour < 4
  hour = hour % 12
  hour   = 12 if hour == 0
  $(dom).find('.time').html(hour + ":" + minute);

  
  
  
  $(dom).find('.period').html(timeSegment)
  $(dom).find('.name').html(name)



style: """
width: 100%
text-align: center
top: 50%
transform:      translateY(-50%);


  
h1.time, #greeting h2
  font-family: "Helvetica Neue"
  font-weight: 500
  padding: 0
  margin: 0
  color: #fff
  letter-spacing: -5px

h1.time
  font-size: 180px
  line-height: 180px

#greeting h2
  font-size: 54px
  line-height: 54px;
  letter-spacing: 0
  white-space: nowrap
"""
