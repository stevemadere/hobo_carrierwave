hobo_carrierwave
==========

Integration of carrierwave attachment uploading with hobo

#Critical Reminder:
Before you forget to do it, add the following to your 
**app/views/taglibs/application.dryml**:
```
<include gem='hobo_carrierwave'/>

<extend tag="form" for="MyModelThatHasAttachments">
  <old-form merge multipart/>
</extend>

```
Repeat the form tag extend for any models that may include
another model with attachment via an accessible associaton.

-------------

# Usage
Including this gem in a hobo project allows you to make use
of the following custom field types which will automatically
be treated as uploadable in forms.

* carrierwave_attachment
* carrierwave_image

e.g.
```ruby
class Photo < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    image :carrierwave_image, name: true, primary_content: true
    timestamps
  end
  attr_accessible :image

...

```

## Configuration

To configure options for hobo_carrierwave, create entries like the following
in config/environments/*.rb

```ruby
  HoboCarrierwave::Config.storage = :fog # to use cloud storage
  HoboCarrierwave::Config.image.sizes = { thumbnail: [100,100], preview: [200,200] }
```



