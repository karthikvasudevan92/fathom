def analyse_candidates(submissions):
        analysis = {}
        analysis["sublist"] = []
        analysis["candidates"] = []
        analysis["commentlist"] = []
        analysis["count"] = 0
        analysis["commentscount"] = 0
        sublist = []
        for submission in submissions:
            sub = {}
            sub["hascomment"] = ""
            sub["url"] = submission.permalink
            sub["title"] = submission.title
            sub["subreddit"] = submission.subreddit
            sub["score"] = submission.score
            sub["domain"] = submission.domain
            commentlist = []
            for com in submission.comments:
                if isinstance(com, MoreComments):
                    continue
                comment = {}
                comment["hasdigit"] = ""
                comment["original"] = com.body
                comment["split"] = word_tokenize(comment["original"])
                tagged = nltk.pos_tag(comment["split"])
                wordlist = []
                for i,wrd in enumerate(comment["split"]):
                    word = {}
                    word["text"] = wrd[0]
                    word["classes"] = ""
                    word["details"] = ""
                    word[""]
                    exists = Word.objects.all().filter(wordstr=word["text"])
                    symbolmatches = Quantity.objects.all().filter(symbol__exact=word["text"])
                    namematches = Quantity.objects.all().filter(name__exact=word["text"])
                    if not exists:
                        word["classes"] += "strange"
                        hasDigit = bool(re.search(r'\d',word["text"]))
                        if(hasDigit):
                            regex = r"(http)"
                            if not (re.search(regex,word["text"])):
                                analysis["count"]+=1
                                comment["hasdigit"] = "hasdigit"
                                sub["hascomment"] = "hascomment"
                                word["comment"] = comment
                                word["submission"] = sub
                                word["classes"] += " " + "hasdigit"
                                word["before"] = ' '.join(comment["split"][(i-15):i])+ ' '
                                word["after"] = ' ' + ' '.join(comment["split"][(i+1):(i+15)])                            
                                word["wordlist"] = tagged
                                analysis["candidates"].append(word)
                                wordlist.append(word)
                    else:
                        word["classes"] = "exists"

                if(comment["hasdigit"] == "hasdigit"):    
                    comment["wordlist"] = wordlist
                    analysis["commentscount"] +=1
                    commentlist.append(comment)
                    analysis["commentlist"].append(comment)
        return analysis


            def analyse_submissions(submissions):
        analysis = {}
        analysis["sublist"] = []
        analysis["commentlist"] = []
        analysis["count"] = 0
        sublist = []
        for submission in submissions:
            sub = {}
            sub["hascomment"] = ""
            sub["url"] = submission.permalink
            sub["title"] = submission.title
            sub["subreddit"] = submission.subreddit
            sub["score"] = submission.score
            sub["domain"] = submission.domain
            commentlist = []
            for com in submission.comments:
                if isinstance(com, MoreComments):
                    continue
                comment = {}
                comment["hasdigit"] = ""
                comment["original"] = com.body
                comment["split"] = word_tokenize(comment["original"])
                wordlist = []
                for i,wrd in enumerate(comment["split"]):
                    word = {}
                    word["text"] = wrd
                    word["classes"] = ""
                    word["details"] = ""
                    exists = Word.objects.all().filter(wordstr=word["text"])
                    symbolmatches = Quantity.objects.all().filter(symbol__exact=word["text"])
                    namematches = Quantity.objects.all().filter(name__exact=word["text"])
                    # if( symbolmatches | namematches ):
                        # pprint(symbolmatches)
                        # pprint(namematches)
                    if not exists:
                        word["classes"] += "strange"
                        hasDigit = bool(re.search(r'\d',word["text"]))
                        if(hasDigit):
                            analysis["count"]+=1
                            comment["hasdigit"] = "hasdigit"
                            sub["hascomment"] = "hascomment"
                            word["classes"] += " " + "hasdigit"
                            word["before"] = ' '.join(comment["split"][(i-5):i])+ ' '
                            word["after"] = ' ' + ' '.join(comment["split"][(i+1):(i+15)])                            
                            wordlist.append(word)
                    else:
                        word["classes"] = "exists"
                if(comment["hasdigit"] == "hasdigit"):    
                    comment["wordlist"] = wordlist
                    commentlist.append(comment)
                    analysis["commentlist"].append(comment)
            if(sub["hascomment"] == "hascomment"):
                sub["comments"] = commentlist
                sublist.append(sub)
        analysis["sublist"] = sublist
        return analysis
