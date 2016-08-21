# simple script to 'unpublish' posts.  Useful for re-teaching, assuming each post
# does not have a 'published' attribute in its YAML.  If it does, rewrite the sed
# below to swap the `published: true` in addition to the `---`.
# Obvs run this from within the _posts directory.

for f in *.md
do
    echo $f

    sed -i '0,/---/s/---/---\npublished: false/' $f
done
