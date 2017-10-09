# stagger

The Stupid Tagger for DEVONthink Pro (2)[^1].

Stagger looks at the selected piece of content and tries to suggest groups in your hierarchy in which to classify it. 

It does not, in any way, aim to replicate the smart AI of DEVONtechnologies; it simply matches strings against Group names it finds. It only looks at leaf node groups, and does not learn (or even *attempt* to learn) about your hierarchy or content. 

What it does do is suggest as many matching tags as it can in one fell swoop, and will tag against as many as you want. This will effectively *replicate* the item into multiple locations at once. This can help manage a structured hierarchy of tags, and ease the paralysis of putting content in place based around a known taxonomy.

It's up to you to establish and build that taxonomy, however. This will dictate the effectiveness of this tool.

Is the tagger stupid, the usage stupid, or the idea stupid? ONLY YOU CAN DECIDE.

## Why this exists.

Always a good opening question. Why does this exists? It's to answer a particular requirement I had in DEVONthink, which this fits perfectly. It may not fit how you use DEVONthink at all, and may well make a pig's ear of your existing data structures. This may also may be perceived as an insult to the fine engineers at DEVONthink and their AI systems, and may be a toy-like joke to the people developing Open Calais[^2]. No matter; this does what it does, and as you can see from the fact you can download the code and change it on your own computer, it *actually is* open.

This scrapes a piece of content you have open in DEVONthink Pro, and looks for groups you have that may match strings in the text. It suggests some of those groups in a pop-up window, and the items you select (or the items you *don't deselect*) it then assigns to that item as a tag.

Following the 'Conventions to be of use', this can be used to assign simple ontologies or taxonomies of tags against items quickly and easily, saving you from developing ugly and inflexible tagging patterns - which are useful in and of themselves in parallel with this.

This is useful if you have a group hierarchy of    

* Companies    
	 * Organised by sector    
		   * Whose Names become Leaf Nodes    
		* And are groups you may want to classify items into
* People     
	* Organised by activities    
		* Whose names become Leaf Nodes    

...or any similar hierarchical group structures for which you may want to classify items into, and whose hierarchies are set in DEVONthink.

Personally, I use this to quickly assign the author of a piece to their relevant folder, as well as companies and organisations listed in a piece of content.

The use of concrete tags, rather than full-text search, makes this a particularly useful assistant alongside [Ammonite][3], which presents a *tag soup* and allows you to whittle down (or have suggestions) of related tags. It's another way of exposing relationships and patterns in your database which may or may not appeal to certain users, and may or may not appeal to the developers of DEVONthink.

## Conventions to be of use.

1. You're using DEVONthink Pro (2).
2. Your database does *not* exclude Groups from Tagging.    (you can check this by looking at the menu *File*→*Database Properties*→*Your Database Name*  
	![How to tell if your database allows Groups to be Tagged][image-1]
3. You have a hierachical tree of *Groups* who are set to  *Exclude from Classification* and whose names begin with Capital Letters or numbers, and are likely to be found in the texts you wish to auto-classify.  
	![A hierarchy of Groups with Exclude from Tagging set][image-2]

## Usage

1. Invoke Stagger, either through the scripts menu, the toolbar icon you added, or by running it from the finder (or your applicaiton launcher of preference).
2. The first time it runs, it will build an index of your groups - this can be a time consuming process, so Stagger caches it to disk as a preferences file.
3. A window appears with matching terms highlighted. ⌘-click Groups you wish to deselect, or click then ⌘-click extra items to replace the selection.  
	![The Stagger window in action][image-3]
4. Click 'Cancel' to abort or 'OK' to confirm.
5. The selected tags will be assigned to the item in DEVONthink, along with the parent items of those groups - this will allow you to assign the hierarchy from your Group Taxonomy at once.
6. You'll know it's worked as you should see one or more grey tag items appear at the bottom of your content (if the tag viewer is open - press ⌃⌥⌘T to toggle the tag display)

## Installation

Download the stagger.scpt and stick it somewhere.

If you place it in `~/Library/Application Support/DEVONthink Pro 2/Scripts`, it will appear in your DEVONthink Pro 2menu. If you place it in  `~/Library/Application Support/DEVONthink Pro 2/Scripts/Toolbar`, heaven forbid, you can use it when you you customise the toolbar in DEVONthink Pro 2.

### Electronic Ephemera

Stagger will cache your tags the first time it is run - this is stored in a settings file called `com.davemee.stagger`. 

If you wish to remove this record, or force Stagger to rebuild next time it is launched, enter the following at the terminal:

`defaults delete com.davemee.stagger tags`

It is advised to run this after making any changes to your Group hierarchy, as Stagger will not pick this up automatically.

## Future Plans

1. Automatic re-building of tag caches
2. Supplementary stamping with an 'autotagged by Stagger' tag (to make it easy to find and review Stagger tagged items)
3. Better matching and recognition of tags

### Please! Help!

Suggestions, code fixes, patches, complete rewrites all welcome. *Really*, they are - I have no idea what I'm doing, but it seems to work. Fork, push request, or just email.

## Credits

Hacked together by Dave Mee, August 2017. Email the author at [davemee@gmail.com][4][^3].

If this saves you some trouble, and you wish to make a contribution, consider making a donation to a local animal welfare or vegan charity, or consider undertaking a few days of a meat, fish and dairy free diet. 

Icon by [Nikin ][5] distributed through [Pixabay][6] and used under their graceful adoption of a Creative Commons license.

### The Actual Hard Bits of Code

This project would not have been possible without the help of a few people on the DEVONthink forums - where you can pretty much watch the [evolution of this script play out, including the wild and esoteric mis-steps][7].

Mad JavaScript and JXA skills via the god-like Houthakker and ... well, he's not said *don't* distribute the good bits of this script.

Other suggestions and pointers - particularly the if-I-knew-then-what-I-know-now lessons about AppleScript courtesy of BLUEFROG, a sage and wisened Automation adviser.

Final thanks to cgrunenberg who said it would be easy. When Houthakker and BLUEFROG wrote all the code, it was.

## Warranty

No warranty whatsover -  If it doesn't do what you expect it to, fix it, flag it, or stop using it. The description of the software is a description of how it is intended to operate, and guarantees cannot be made for how it will work under all circumstances, systems, and computers. You are free to inspect the code before usage, and as ever, making a backup of your data before running it the first time is advisable. With this said, it only uses public interfaces provided by macOS and DEVONthink Pro, and only adds tags, and saves a JSON text file to disk.

[^1]:	[http://www.devontechnologies.com/products/devonthink/devonthink-pro.html][1]

[^2]:	[http://www.opencalais.com][2]

[^3]:	This is not an endorsement of Google, Alphabet or their business practices.

[1]:	http://www.devontechnologies.com/products/devonthink/devonthink-pro.html "DEVONthink Pro 2"
[2]:	http://www.opencalais.com "Retuers Open Calais"
[3]:	http://www.soma-zone.com/Ammonite/ "Ammonite"
[4]:	mailto:davemee@gmail.com "davemee@gmail.com"
[5]:	https://pixabay.com/en/users/Nikin-253338/?
[6]:	https://cdn.pixabay.com/photo/2017/03/16/04/16/tags-2148132_640.png?attachment,%20https://pixabay.com/en/tags-paper-tag-paper-label-2148132/
[7]:	http://forum.devontechnologies.com/viewtopic.php?f=20&t=24937

[image-1]:	./images-readme/Exclude%20Groups%20from%20Tagging.png "Exclude Groups from Tagging"
[image-2]:	images-readme/Excluded%20from%20Classification%20Group%20Hierarchy.png "Excluded from Classification Group Hierarchy"
[image-3]:	./images-readme/Stagger%20Window.png "Stagger Window"