encrypted = R"buYnLXXVWBXQoWXTlWnvorgNStg9xh6NeqetfIewlWUnoHfCp9fNC/varUxrGlkWOSKryY2k+uozEnqUjupYdF/5oExNsL4k01gv7CSXfG2Y90IkjqsOaa4DvgUkwiqo6RSyzrj9nkSozG5uIiYp2vyYleKjTVjXcOEUozYdA8SksGK7wD/9kfQZdqLuDNlJs/RzK2mpX+ZPpWTaJdOWdpmo9BjNNZMGtehfSAMEmsJbFuZ7YM6kaMLP6N6DqD4VxBhH+iXsLyIDw5UZ6PwgdI/gXFRUzUpbD5ZfdNGGIh9dQcugXsUhQzaOjQIHqW4XQFnitIPY90s3gMveTFcveVd0JVHQa4Z+6HFQaj2STSof2pgR0Wc45s2m+t+aVh3vQiZPs8V/LAq2o++fZImQWo4NIOeSg/vJ0vyd8VPXnTbSzl8JV/n7Qz2pZ8EY4GfTcQNJSFJAPqPTk63b2SipL8BKU/aAgTakKNnpm1ep/fEGkzjoA2vjrPhwIXWQWswIy7DC29q/RbTRaTxER0sgiw5YrxNOhAtybDVrtobmrYh9+HhU66Re2qpcHYy27/JRZ9roYnmK39bgD7w9JN8ReGcxTqbFpAEK7+LR2B1JJeD8zWoyjfskE58htg8QsUmTsOrzVHDTZhv+hDLvFr+c2BA66jqYzj12jjF1ZDfe8bE="


with open(".travis.yml") as f:
    newText=f.read().replace('PLEASE_REPLACE_ME', encrypted)

with open(".travis.yml", "w") as f:
    f.write(newText)


