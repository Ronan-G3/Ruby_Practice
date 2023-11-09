# Regular Expressions

name = "sdkfhksdjgdsjdfjfbsskfhfbfooshfbskshfbfgsh"

p name =~ /foo/

reg1 = /foo/

p reg1
p reg1.class

fi = Regexp.new("ksd")
p fi

p name =~ fi
# Position 5 in string name is where fi begins
# # Counts into the name string and gets the position of the quoted string


# Substitution

tale = "The boy stood on the burning deck, saying oh boy..."

p tale.sub(/boy/, "girl")

p tale

p tale.sub(/\sboy/, " cow")


# Gsub - substitues every instance of the word specified with the word given

p tale.gsub(/boy/, "girl")
# every Boy is now Girl

p tale.gsub(/\sb/," c")
# every b is now c

p tale.gsub(/.o./,"sos")

website = "/www.manic_repressives.com/home/denial/who.html"

p website.gsub(/\//,"-")  # The backslash is telling it to mean it is refering to a backslash
# now every forward slash is a heiphen


