hobo_carrierwave
==========

Integration of carrierwave attachment uploading with hobo

#Critcal Reminder:
Before you forget to do it, add the following to your 
app/views/taglibs/application.dryml:
```
<include gem='hobo_carrierwave'/>

<extend tag="form" for="MyModelThatHasAttachments">
  <old-form merge multipart/>
</extend>

```
Repeat the form tag extend for any models that may include
another model with attachment via an accessible associaton.

-------------


