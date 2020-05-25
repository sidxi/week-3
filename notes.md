# New terms, alphabetical:
* Authorities: individuals with many ingoing links (who received lots of letters)
* ArcGIS: ArcGIS is a geographic information system for working with maps and geographic information maintained by the Environmental Systems Research Institute
* Betweenness (in a network visualization): a measure of how many different strands of the network pass through this person
* Closeness (in a network visualization): a measure of how central a person is
* curl (the command prompt): a command line tool to transfer data to or from a server, using any of the supported protocols (HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, TELNET, LDAP or FILE). curl is powered by Libcurl. This tool is preferred for automation, since it is designed to work without user interaction
* Hubs: individuals with many outgoing links (who sent lots of letters)
* One mode networks: one set of nodes that are similar to each other
* OpenRefine: OpenRefine, formerly called Google Refine and before that Freebase Gridworks, is a standalone open source desktop application for data cleanup and transformation to other formats, the activity known as data wrangling. It is similar to spreadsheet applications; however, it behaves more like a database.
* Regular expression (REGEX): a powerful tool for finding and manipulating text; a way of looking through texts to locate _patterns_. For example: every line that begins with a number, or every instance of an email address, or whenever a word is used (even if there are slight variations).
* Tilde: an accent (~) placed over Spanish n when pronounced ny (as in señor ) or Portuguese a or o when nasalized (as in São Paulo ), or over a vowel in phonetic transcription, indicating nasalization.
* Two mode networks: Two different sets of nodes, and ties existing only between nodes belonging to different sets

# Resources that helped me this week:
* https://craftingdh.netlify.app/week/3/instructions/
* https://craftingdh.netlify.app/week/3/regex/
* https://craftingdh.netlify.app/week/3/open-refine/
* https://craftingdh.netlify.app/week/3/networks/
* https://craftingdh.netlify.app/week/3/bonus/
* https://en.wikipedia.org/wiki/ArcGIS 
* https://en.wikipedia.org/wiki/Tilde 
* https://toreopsahl.com/tnet/two-mode-networks/defining-two-mode-networks/ 
* https://stackoverflow.com/questions/55290271/updating-anaconda-fails-environment-not-writable-error
* https://www.geeksforgeeks.org/curl-command-in-linux-with-examples/ 
* http://openrefine.org/ 
* https://en.wikipedia.org/wiki/John_Russell,_1st_Earl_Russell
* https://github.com/gephi/gephi/issues/1787
* https://blog.idrsolutions.com/2012/09/netbeans-cannot-locate-java-installation-in-specified-jdkhome/
* https://www.digitalcitizen.life/3-ways-learn-whether-windows-program-64-bit-or-32-bit

# Thoughts and other notes:
* To enable regex searches, tick the box that has .* in the search panel 
* You can’t simply replace every instance of “dog” or “cat” with “animal” (for example) because simple searches don’t differentiate between letters and spaces. So every time “cat” or “dog” appear within words, they’ll also be replaced with “animal”. “catch” will become “animalch” etc. My favourite example of this happening can be found here: https://thatsnotevenaword.tumblr.com/post/84788491945/oh-my-fucking-god-so-im-reading-this-harry
  * To search for only “cat” you would have to do \<cat\>  ;  to search for only “cat or dog” you would have to do \<cat|dog\>
* (Some) Regex search terms (for a more complete list, see: https://jdhao.github.io/2019/02/28/sublime_text_regex_cheat_sheet/): 
  * | = or
  * \< OR \b = the beginning of a word (note: figure out which yours is)
    * Ex: \<cat (or \bcat)
  * \> OR \b = the end of a word
    * Ex: cat\> (or cat\b)
  * () = to group something together
    * Ex: gr(a|e)y ; (that dog)|(that cat)
    * Ex: (dogs)( and )(cats) => note the text editor will remember them as \1 \2 \3 respectively
  * . = directs the search to any character at all
    * Ex: “d.g” will give you “dig,” “dog,” “dug,” etc
  *	+ = instructs the program to find any number of the previous character
    *	Ex: do+g will give you “dog,” “doog,” “dooog,” etc
    *	Ex: (do)+g will give you “dog,” “dodog,” “dododog,” (useful for “assassinate!)
*	Powerful regex search term combo: .+ because this instructs the program to find any amount of any characters within your search
*	Is there a faster way to delete stuff?
    *	Yeah find and replace with nothing
*	Why are there spaces between some regex search parameters and not others?
*	Some of the choices I made were simple (Ashbel Smith got misspelled a LOT, or “the secretary of the state of Texas [Allen]” being merged with “Secretary of State [Allen]”), but others were more complex. For example, I saw a Lord Russell and an M. P. Russell while I was working my way through the recipients, and knew that MP is shorthand for Member of Parliament. A quick google search took me to Earl John Russell’s Wikipedia page, which told me that John Russell was both a Lord and an MP in the 1840s (when the correspondence occurred). Because of this, I was able to change the two to “Lord Russell [M.P.]”
    * Note: I tried the same for Senator of State [Rej6n] and Joaquin G. Rej6n but was unable to find any actual information, so I left them alone
*	Dr. Graham quote I liked: _When we stitch that together into a network of people connected because they exchanged letters, we end up with a shard of their social network. – this is fascinating to think of; despite the fact that we aren’t reading the letters we are still seeing names and patterns emerge_
  *	http://scottbot.net/networks-demystified-9-modality/ This is very cool
  *	2 key questions for networks (If either answer is negative, another approach is probably warranted):
    * To what extent is connectivity specifically important to this research project?
    *	Can any of the network analyses my collaborators or I know how to employ be specifically useful in the research project? 
*	Dr Graham quote I liked: _Before we jump down the rabbit hole of visualization, let's recognize right now that visualizing a network is only rarely of analytical value. The value of network analysis comes from the various questions we can now start posing of our data when it is represented as a network. In this correspondence network, who is in the centre of the web? To whom would information flow? To whom would information leak? Are there cliques or ingroups? When we identify such individuals, how does that confirm or confound our expectations of the period and place?_
