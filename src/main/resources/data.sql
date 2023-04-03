INSERT INTO `user` (`id`, `email`, `password`, `username`)
VALUES (NULL, 'spap@unipi.gr', NULL, 'user');

INSERT INTO `course` (`id`, `description`, `name`)
VALUES (NULL, 'HTML concepts.', 'HTML');

INSERT INTO `chapter` (`course_id`, `name`, `description`)
VALUES (1, 'Introduction',
        '<p>Η HTML (Hypertext Markup Language) είναι η κύρια γλώσσα σήμανσης για τις ιστοσελίδες. Μία γλώσσα σήμανσης είναι ένα σύνολο από ετικέτες σήμανσης (markup tags). Οι ετικέτες σήμανσης που χρησιμοποιεί η HTML ονομάζονται ετικέτες HTML (html tags). Κάθε html tag έχει ένα όνομα και περιέχεται μέσα στα σύμβολα &lt;&gt;. Συνήθως έχουν τη μορφή:</p>\r\n\r\n<p style=\"text-align:center\"><em>&lt;tag&gt;κείμενο&lt;/tag&gt;</em></p>\r\n\r\n<p>Δηλαδή αποτελούνται από ένα tag ανοίγματος, ένα tag κλεισίματος και ανάμεσά τους υπάρχει κείμενο το οποίο επηρεάζεται ανάλογα με τη λειτουργία που επιτελεί το tag. Το ζευγάρι των tags σε συνδυασμό με το κείμενο που περικλείουν, ονομάζεται html στοιχείο (html element).</p>\r\n\r\n<p>Κάθε tag χρησιμοποιεί συγκεκριμένες ιδιότητες (attributes). Μία ιδιότητα χρησιμοποιείται μόνο στο tag ανοίγματος και είναι ένας συνδυασμός όνομα ιδιότητας=&rdquo;τιμή&rdquo;:</p>\r\n\r\n<p style=\"text-align:center\"><em>&lt;tag attr=&#39;value&#39;&gt;κείμενο&lt;/tag&gt;</em></p>\r\n\r\n<p>Η HTML ορίζει ένα κοινό στυλ για τις σελίδες, όπως τίτλοι (titles), επικεφαλίδες (headings), παράγραφοι (paragraphs), λίστες (lists), πίνακες (tables), φόρμες (forms) κ.ο.κ. Ορίζει, επίσης, στυλ χαρακτήρων, όπως έντονη ή πλάγια γραφή. Όταν ο web browser διαβάζει μία ιστοσελίδα, στην πραγματικότητα διαβάζει τον κώδικα HTML που παράγεται από τον web server και αναλαμβάνει την ανάλογη μορφοποίηση της σελίδας στην οθόνη του χρήστη. Δηλαδή, δεν εμφανίζει τα html tags αλλά τα χρησιμοποιεί για να ερμηνεύσει και να παρουσιάσει το περιεχόμενο της σελίδας.</p>\r\n'),
       (1, 'Structure of HTML page – HTML tags',
        '<p><strong>DOCTYPE</strong></p>\r\n\r\n<p>Κάθε αρχείο html αποτελεί μία σελίδα. Κάθε HTML σελίδα πρέπει να έχει συγκεκριμένη μορφή:</p>\r\n\r\n<p><em>&lt;!DOCTYPE html&gt;<br />\r\n&lt;html&gt;<br />\r\n&lt;head&gt;<br />\r\n&lt;title&gt;Τίτλος σελίδας&lt;/title&gt;<br />\r\n&lt;/head&gt;</em></p>\r\n\r\n<p><em>&lt;body&gt;<br />\r\nΠεριεχόμενο σελίδας<br />\r\n&lt;/body&gt;<br />\r\n&lt;/html&gt;</em></p>\r\n\r\n<p>Στη σελίδα http://validator.w3.org μπορούμε να ανεβάσουμε το αρχείο html που έχουμε φτιάξει και να δούμε αν ο κώδικας ακολουθεί το πρότυπο που ορίζεται από το W3C (World Wide Web Consortium) για κάθε είδος doctype.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Το αποτέλεσμα του validator για το παραπάνω κομμάτι κώδικα html\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_validator.png\" style=\"height:180px; width:500px\" /><br />\r\n<em>Το αποτέλεσμα του validator για το παραπάνω κομμάτι κώδικα html</em></p>\r\n\r\n<p><strong>Html tag: &lt;html&gt;</strong><br />\r\nΗ πρώτη html ετικέτα που πρέπει να υπάρχει σε ένα αρχείο html είναι η ετικέτα &lt;html&gt;. Το συγκεκριμένο tag ενημερώνει τον browser ότι ο κώδικας που περικλείεται ανάμεσα στα &lt;html&gt; και &lt;/html&gt; είναι γλώσσα σήμανσης HTML.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Html tag: &lt;head&gt;</strong><br />\r\nΤο επόμενο tag που πρέπει να υπάρχει στον κώδικα είναι το &lt;head&gt;. Χρησιμοποιείται για την καταχώρηση στοιχείων που δεν είναι ορατά (όχι όλα τουλάχιστον) στη σελίδα. Μόνο συγκεκριμένα tags μπορούν να χρησιμοποιηθούν μέσα στο κομμάτι του &lt;head&gt;, κάθε ένα από τα οποία έχει συγκεκριμένο σκοπό.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Html tag: &lt;title&gt;</strong><br />\r\nΣτον παραπάνω κώδικά είδαμε τη χρήση του tag &lt;title&gt; μέσα στο &lt;head&gt;. Το &lt;title&gt; όριζει τον τίτλο της σελίδας. Αν ανοίξουμε το html αρχείο στον browser, θα δούμε στο tab του browser τον τίτλο που έχουμε ορίσει, καθώς επίσης και στο πάνω μέρος του browser.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Ο τίτλος της σελίδας είναι ορατός στο πάνω μέρος του browser\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/browser_title.png\" style=\"height:160px; width:500px\" /><br />\r\n<em>Ο τίτλος της σελίδας είναι ορατός στο πάνω μέρος του browser</em></p>\r\n\r\n<p><strong>Html tag: &lt;script&gt;</strong><br />\r\nΤο &lt;script&gt; χρησιμοποιείται για να ορίσουμε κάποιο κομμάτι κώδικα που θέλουμε να εκτελεστεί. Ο κώδικας αυτός συνήθως είναι σε γλώσσα javascript, η οποία θα μελετηθεί εκτενέστερα σε επόμενο κεφάλαιο.&nbsp;Π.χ.</p>\r\n\r\n<p><em>&lt;script type=&quot;text/javascript&quot;&gt;<br />\r\n&lt;!--script<br />\r\nΚώδικας javascript σε σχόλια<br />\r\n--&gt;<br />\r\n&lt;/script&gt;</em></p>\r\n\r\n<p><br />\r\n<strong>Html tag: &lt;style&gt;</strong><br />\r\nΗ ετικέτα &lt;style&gt; χρησιμοποιείται για να οριστεί η πληροφορία που σχετίζεται με το αισθητικό αποτέλεσμα της σελίδας. Ο κώδικας που περικλείεται στο &lt;style&gt; είναι σε μορφή css (Cascading Style Sheets) και θα μελετηθεί σε επόμενο κεφάλαιο. Π.χ.</p>\r\n\r\n<p><em>&lt;style type=&quot;text/css&quot;&gt;</em></p>\r\n\r\n<p><em>* {<br />\r\n&nbsp;&nbsp; &nbsp;font-size:11px;<br />\r\n}</em></p>\r\n\r\n<p><em>&lt;/style&gt;</em></p>\r\n\r\n<p><br />\r\n<strong>Html tag: &lt;link&gt;</strong><br />\r\nΧρησιμοποιείται για τη σύνδεση του αρχείου html με εξωτερικά αρχεία, κυρίως αρχεία css. Με αυτό τον τρόπο διαχωρίζεται ο κώδικας html από τον κώδικα css, γεγονός που συντελεί σε πιο ευανάγνωστο κώδικα. Π.χ.</p>\r\n\r\n<p><em>&lt;link href=&quot;stylesheet.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; &nbsp;/&gt;</em></p>\r\n\r\n<p><br />\r\n<strong>Html tag: &lt;meta&gt;</strong><br />\r\nΧρησιμοποίειται για τον ορισμό των πληροφοριών meta της σελίδας (meta data). Οι πληροφορίες αυτές δεν είναι ορατές στην ιστοσελίδα, ωστόσο έχουν πολλές φορές σημαντικό λόγο ύπαρξης. Για παράδειγμα κάποιες από τις πληροφορίες meta είναι πολύ σημαντικές για το κομμάτι του Search Engine Optimization (SEO), τη διαδικαδία δηλαδή βελτίωσης της θέσης της ιστοσελίδας σε μία μηχανή αναζήτησης (π.χ. Google). Π.χ.</p>\r\n\r\n<p><em>&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;<br />\r\n&lt;meta http-equiv=&quot;keywords&quot; content=&quot;mini, play, games, παιχνίδια, flash&quot; /&gt;<br />\r\n&lt;meta http-equiv=&quot;description&quot; content=&quot;Παίξτε ελεύθερα πολλά flash παιχνίδια, ιδανικά για χαλάρωση και διασκέδαση.&quot; /&gt;</em></p>\r\n\r\n<p>Η πρώτη σειρά (Content-Type) καθορίζει την κωδικοποίηση της σελίδας, η δεύτερη τις λέξεις κλειδιά με τις οποίες μπορεί ένας χρήστης να βρει τη σελίδα σε μία μηχανή αναζήτησης και η τρίτη &nbsp;μία μικρή περιγραφή της σελίδας.</p>\r\n\r\n<p><br />\r\n<strong>Html tag: &lt;base&gt;</strong><br />\r\nΟρίζει τη βάση αρχής για τον καθορισμό των σχετικών urls. Π.χ.</p>\r\n\r\n<p><em>&lt;base href=&quot;http://www.miniplay.gr./images/&quot; target=&quot;_blank&quot; /&gt;</em></p>\r\n\r\n<p>Αν όλες οι εικόνες της ιστοσελίδας είναι αποθηκευμένες στον κατάλογο images, για να τις εμφανίσουμε στη σελίδα δε θα χρειαζόταν να γράψουμε:</p>\r\n\r\n<p><em>&lt;img src=&rdquo;images/picture.jpg&rdquo; /&gt; αλλά<br />\r\n&lt;img src=&rdquo;picture.jpg&rdquo; /&gt;</em></p>\r\n\r\n<p><br />\r\n<strong>Html tag: &lt;body&gt;</strong><br />\r\nΧρησιμοποιείται μετά το κλείσιμο του στοιχείο head και αποτελεί το στοιχείο που περιέχει όλο το περιεχόμενο της ιστοσελίδας. Ο html κώδικας που γράφεται για τη σελίδα, περιέχεται μέσα στο body. Κάποιες από τις ιδιότητές του είναι:</p>\r\n\r\n<ul>\r\n	<li>bgcolor: ορισμός χρώματος του φόντου της σελίδας</li>\r\n	<li>text: ορισμός χρώματος των χαρακτήρων του κειμένου</li>\r\n	<li>background: το URL της εικόνας που θα εμφανίζεται στο φόντο της σελίδας</li>\r\n</ul>\r\n\r\n<p>Π.χ.<br />\r\n<em>&lt;body text=&quot;#CC0000&quot; &nbsp;background=&quot;images/thundercats.jpg&quot;&gt;<br />\r\nΠεριεχόμενο σελίδας<br />\r\n&lt;/body&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση background εικόνα στο body\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/background_image.png\" style=\"height:886px; width:643px\" /><br />\r\n<em>Χρήση background εικόνα στο body</em></p>\r\n\r\n<p>&nbsp;</p>\r\n'),
       (1, 'Headings',
        '<p>Οι επικεφαλίδες χρησιμοποιούνται για το διαχωρισμό των ενοτήτων κειμένου, όπως και σε ένα βιβλίο. Έχουν μεγαλύτερο μέγεθος γραμματοσειράς και πιο έντονο.Υπάρχουν 6 είδη επικεφαλίδας τα οποία είναι &lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, &lt;h6&gt;. Το html tag &lt;h1&gt; έχει το μεγαλύτερο μέγεθος και αυξάνοντας επίπεδο, το μέγεθος της επικεφαλίδας μειώνεται. Π.χ.</p>\r\n\r\n<p><em>&lt;h1&gt;Ευρώπη&lt;/h1&gt;</em></p>\r\n\r\n<p><em>&lt;h2&gt;Ελλάδα&lt;/h2&gt;</em></p>\r\n\r\n<p><em>&lt;h3&gt;Νομός Αττικής&lt;/h3&gt;</em></p>\r\n\r\n<p><em>&lt;h4&gt;Δυτική Αττική&lt;/h4&gt;</em></p>\r\n\r\n<p><em>&lt;h5&gt;Δήμος Περιστερίου&lt;/h5&gt;</em></p>\r\n\r\n<p><em>&lt;h6&gt;Περιοχή Νέα Ζωή&lt;/h6&gt;</em></p>\r\n'),
       (1, 'Paragraphs – Change line',
        '<p>Το html tag &lt;p&gt; ορίζει μία παράγραφο. Το τελικό αποτέλεσμα αφήνει ένα μικρό κενό πάνω και κάτω από το κείμενο ώστε να φαίνεται ότι το συγκεκριμένο κομμάτι είναι μια παράγραφος (όπως ακριβώς και σε ένα βιβλίο). Αν θέλουμε να αλλάξουμε γραμμή χωρίς να χρησιμοποιήσουμε παράγραφο, γράφουμε την ετικέτα &lt;br /&gt; η οποία δεν περικλείει κείμενο. Γι&#39; αυτό το λόγο ανήκει στην κατηγορία των tags που δεν έχουν ετικέτα κλεισίματος. Η ετικέτα αλλαγής γραμμής μπορεία να γραφεί και &lt;br&gt; αλλά ο σωστός τρόπος απαιτεί και τη χρήση της καθέτου. Π.χ.</p>\r\n\r\n<p>&lt;p&gt;Παράγραφος 1&lt;/p&gt;<br />\r\n&lt;p&gt;Παράγραφος 2&lt;/p&gt;<br />\r\nΠρώτη γραμμή&lt;br /&gt;Δεύτερη γραμμή</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση παραγράφων και αλλαγή γραμμής\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_paragraphs.png\" style=\"height:384px; width:392px\" /><br />\r\n<em>Χρήση παραγράφων και αλλαγή γραμμής</em></p>\r\n'),
       (1, 'Formatting text',
        '<p>Υπάρχουν αρκετά tags για τη μορφοποίηση του κειμένου. Τα συνηθέστερα είναι τα παρακάτω.</p>\r\n\r\n<ul>\r\n	<li>&lt;b&gt; Ορίζει κείμενο με εντονή γραφή</li>\r\n	<li>&lt;big&gt; Μέγαλο μέγεθος κειμένου</li>\r\n	<li>&lt;em&gt; Προσδίδει έμφαση στο κείμενο</li>\r\n	<li>&lt;i&gt; Κείμενο με πλάγια γραφή</li>\r\n	<li>&lt;small&gt; Μικρό μέγεθος κειμένου</li>\r\n	<li>&lt;strong&gt; Κείμενο με επίσης έντονη γραφή</li>\r\n	<li>&lt;sub&gt; Κείμενο σε θέση δείκτη</li>\r\n	<li>&lt;sup&gt; Κείμενο σε θέση εκθέτη</li>\r\n	<li>&lt;ins&gt; Κείμενο εισαγωγής</li>\r\n	<li>&lt;del&gt; Διεγραμμένο κείμενο</li>\r\n</ul>\r\n\r\n<p>Μπορούμε να συνδυάσουμε τα παραπάνω tags με αλλαγή γραμμής και να δούμε το αποτέλεσμα.</p>\r\n\r\n<p><em>&lt;b&gt;Έντονη γραφή&lt;/b&gt;&lt;br /&gt;<br />\r\n&lt;big&gt;Μεγάλο μέγεθος κειμένου&lt;/big&gt;&lt;br /&gt;<br />\r\n&lt;em&gt;Κείμενο έμφασης&lt;/em&gt;&lt;br /&gt;<br />\r\n&lt;i&gt;Πλάγια γραφή&lt;/i&gt;&lt;br /&gt;<br />\r\n&lt;small&gt;Μικρό μέγεθος κειμένου&lt;/small&gt;&lt;br /&gt;<br />\r\n&lt;strong&gt;&quot;Δυνατό&quot; κείμενο (επίσης έντονο)&lt;/strong&gt;&lt;br /&gt;<br />\r\nΚείμενο &lt;sub&gt;Δείκτης&lt;/sub&gt;&lt;br /&gt;<br />\r\nΚείμενο&lt;sup&gt;Εκθέτης&lt;/sup&gt;&lt;br /&gt;<br />\r\n&lt;ins&gt;Κείμενο εισαγωγής&lt;/ins&gt;&lt;br /&gt;<br />\r\n&lt;del&gt;Διεγραμμένο κείμενο&lt;/del&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Μορφοποίηση κειμένου\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/text_formatting.png\" style=\"height:419px; width:409px\" /><br />\r\n<em>Μορφοποίηση κειμένου</em></p>\r\n'),
       (1, 'Hyperlinks',
        '<p>Ένας υπερσύνδεσμος (ή απλά σύνδεσμος) είναι μία λέξη, φράση ή ακόμα και εικόνα, όπου κάνοντας κλικ, ο χρήστης οδηγείται σε άλλο κομμάτι της τρέχουσας σελίδας ή σε νέα σελίδα. Ξεχωρίζουν από το γεγονός ότι εμφανίζονται με υπογράμμιση ενώ μετακινώντας τον κέρσορα του ποντικιού από πάνω, αλλάζει από βέλος σε χεράκι. Οι ιδιότητες που χρησιμοποιούνται συνήθως είναι:</p>\r\n\r\n<ul>\r\n	<li>href: αποτελεί τον προορισμό του συνδέσμου</li>\r\n	<li>target: ορίζει το αν ο σύνδεσμος θα ανοίξει στο ίδιο ή σε νέο παράθυρο (π.χ. _self, _blank)</li>\r\n</ul>\r\n\r\n<p>Π.χ.&nbsp;<br />\r\n<em>&lt;p&gt;<br />\r\nΓια να δείτε τη σελίδα της google κάντε κλικ στον αντίστοιχο &lt;a href=&#39;http://www.google.gr&#39; target=&rdquo;_blank&rdquo;&gt;σύνδεσμο&lt;/a&gt;.<br />\r\n&lt;/p&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση συνδέσμου\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_link.png\" style=\"height:396px; width:410px\" /><br />\r\n<em>Χρήση συνδέσμου</em></p>\r\n'),
       (1, 'Images',
        '<p>Για την εισαγωγή εικόνας χρησιμοποιείται το tag &lt;img&gt;. Δεν μπορεί να περιέχει κείμενο, επομένως δεν έχει ετικέτα κλεισίματος. Περιέχει μόνο ιδιότητες με τη βοήθεια των οποίων εισάγεται μία εικόνα στη σελίδα. Μπορούν να χρησιμοποιηθούν οι εξής ιδιότητες:</p>\r\n\r\n<ul>\r\n	<li>src: το URL της εικόνας που θέλουμε να προβληθεί</li>\r\n	<li>alt: εναλλακτική περιγραφή, εμφανίζεται στην περίπτωση που δεν υπάρχει το αρχείο της εικόνας</li>\r\n	<li>title: τίτλος εικόνας, ο οποίος εμφανίζεται όταν αφήσουμε τον κέρσορα του ποντικιού πάνω από την εικόνα</li>\r\n	<li>width: πλάτος εικόνας</li>\r\n	<li>height: ύψος εικόνας</li>\r\n	<li>border: περίγραμμα γύρω από την εικόνα σε pixel</li>\r\n</ul>\r\n\r\n<p>Αν δε βάλουμε width και height, ο browser υπολογίζει αυτόματα τις διαστάσεις της εικόνας. Αν βάλουμε τιμή σε ένα από τα δύο, η δεύτερη διάσταση αλλάζει αυτόματα αναλογικά. Αν βάλουμε τιμές και στα δύο, ρυθμίζουμε τις διαστάσεις όπως θέλουμε. Π.χ.</p>\r\n\r\n<p><em>&lt;img src=&quot;images/thundercats.jpg&quot; alt=&quot;Εναλλακτική περιγραφή&quot; title=&quot;Τίτλος&quot; width=&quot;200&quot; border=&quot;3&quot; /&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση εικόνας\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_img.png\" style=\"height:467px; width:410px\" /><br />\r\n<em>Χρήση εικόνας</em></p>\r\n'),
       (1, 'Lists',
        '<p>Υπάρχουν τρία είδη λίστων, οι μη διατεταγμένες, οι διατεταγμένες και οι λίστες ορισμού. Για τη δημιουργία των δύο πρώτων χρησιμοποιείται το &lt;ul&gt; (unordered list) και το &lt;ol&gt; (ordered list). Ανάμεσα τους χρησιμοποιούμε το tag &lt;li&gt; για να δηλώσουμε ένα αντικείμενο της λίστας. Για παράδειγμα:</p>\r\n\r\n<p><em>&lt;h4&gt;Μη διατεταγμένη λίστα&lt;/h4&gt;<br />\r\n&lt;ul&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;h4&gt;Διατεταγμένη λίστα&lt;/h4&gt;<br />\r\n&lt;ol&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 4&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 5&lt;/li&gt;<br />\r\n&lt;/ol&gt;</em></p>\r\n\r\n<p>Ο παραπάνω κώδικα έχει το εξής αποτέλεσμα:</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Δημιουργία μη διατεταγμένης και διατεταγμένης λίστας\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_ul.png\" style=\"height:524px; width:644px\" /><br />\r\n<em>Δημιουργία μη διατεταγμένης και διατεταγμένης λίστας</em></p>\r\n\r\n<p>Παρατηρούμε ότι ο browser βάζει στη μία περίπτωση bullets και στην άλλη (τη διατεταγμένη) αρίθμηση ώστε να καταλαβαίνει ο χρήστης ότι τα παραπάνω αντικείμενα ανήκουν σε μία λίστα με κοινές ιδιότητες.</p>\r\n\r\n<p>Μπορούμε να ορίσουμε το σύμβολο (ή το είδος αρίθμησης για διατεταγμένη λίστα) που εμφανίζεται μπροστά από κάθε αντικείμενο. Αυτό υλοποιείται με τη χρήση της ιδιότητας &#39;type&#39; για τα tag &lt;ul&gt;, &lt;ol&gt;. Π.χ.</p>\r\n\r\n<p><em>&lt;h4&gt;Μη διατεταγμένες λίστες&lt;/h4&gt;<br />\r\n&lt;ul type=&quot;circle&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;ul type=&quot;disc&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;ul type=&quot;square&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ul&gt;<br />\r\n&lt;h4&gt;Διατεταγμένες λίστες&lt;/h4&gt;<br />\r\n&lt;ol type=&quot;1&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ol&gt;<br />\r\n&lt;ol type=&quot;a&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ol&gt;<br />\r\n&lt;ol type=&quot;A&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ol&gt;<br />\r\n&lt;ol type=&quot;i&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ol&gt;<br />\r\n&lt;ol type=&quot;I&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Αντικείμενο 3&lt;/li&gt;<br />\r\n&lt;/ol&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Διάφορες λίστες\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_various_lists.png\" style=\"height:839px; width:548px\" /><br />\r\n<em>Λίστες με διαφορετικά σύμβολα και αρίθμηση</em></p>\r\n\r\n<p>Για τη δημιουργία μίας λίστας ορισμού, χρησιμοποιείται το tag &lt;dl&gt; (definition list) και τα αντικείμενά της δηλώνονται με το tag &lt;dt&gt;. Κάθε αντικείμενο της λίστας ορισμού έχει και μία περιγραφή που δηλώνεται με το tag &lt;dd&gt;. Π.χ.&nbsp;</p>\r\n\r\n<p><em>&lt;h4&gt;Λίστα ορισμού&lt;/h4&gt;<br />\r\n&lt;dl&gt;<br />\r\n&nbsp; &nbsp; &lt;dt&gt;Apache&lt;/dt&gt;<br />\r\n&nbsp; &nbsp; &lt;dd&gt;Web Server&lt;/dd&gt;<br />\r\n&nbsp; &nbsp; &lt;dt&gt;PHP&lt;/dt&gt;<br />\r\n&nbsp; &nbsp; &lt;dd&gt;Server-side scripting language&lt;/dd&gt;<br />\r\n&nbsp; &nbsp; &lt;dt&gt;MySQL&lt;/dt&gt;<br />\r\n&nbsp; &nbsp; &lt;dd&gt;Database Management System&lt;/dd&gt;<br />\r\n&lt;/dl&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Δημιουργία λίστας ορισμού\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_dl.png\" style=\"height:521px; width:641px\" /><br />\r\n<em>Δημιουργία λίστας ορισμού</em></p>\r\n\r\n<p><strong>Εμφωλευμένες λίστες</strong><br />\r\nΈνα σημαντικό στοιχείο είναι η δυνατότητα εμφωλευμένων λιστών, δηλαδή ένα αντικείμενο μιας λίστας να αποτελεί το ίδιο μια νέα λίστα. Με αυτό τον τρόπο, μπορεί να υπάρξει μία δενδρική δομή κατηγοριών, πράγμα χρήσιμο σε αρκετές περιπτώσεις.</p>\r\n\r\n<p><em>&lt;h4&gt;Εμφωλευμένες λίστες&lt;/h4&gt;<br />\r\n&lt;ul&gt;<br />\r\n&nbsp; &nbsp;&lt;li&gt;Κατηγορία 1&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Κατηγορία 2<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&lt;ul&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&lt;li&gt;Υποκατηγορία 1 της κατηγορίας 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;li&gt;Υποκατηγορία 2 της κατηγορίας 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;li&gt;Υποκατηγορία 3 της κατηγορίας 2&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;/ul&gt;<br />\r\n&nbsp; &nbsp; &lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Κατηγορία 3&lt;/li&gt;<br />\r\n&nbsp; &nbsp; &lt;li&gt;Κατηγορία 4&lt;/li&gt;<br />\r\n&lt;/ul&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Εμφωλευμένες λίστες\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_nested_lists.png\" style=\"height:503px; width:455px\" /><br />\r\n<em>Εμφωλευμένες λίστες</em></p>\r\n'),
       (1, 'Tables',
        '<p>Οι πίνακες δίνουν τη δυνατότητα στον προγραμματιστή να ταξινομήσει τα δεδομένα του σε γραμμές και στήλες. Για τη δημιουργία του γίνεται χρήση της ετικέτας &lt;table&gt;. Ανάμεσα στα &lt;table&gt; και &lt;/table&gt; προσθέτουμε κάθε γραμμή με το tag &lt;tr&gt;, την οποία χωρίζουμε σε κελιά (στήλες) με το tag &lt;td&gt;. Μπορούμε, επίσης, να δώσουμε έμφαση σε ένα κελί ως τίτλο μιας στήλης χρησιμοποιώντας το tag &lt;th&gt; αντί για το &lt;td&gt;. Δημιουργούμε έναν πίνακα με 3 σειρές και 2 στήλες, ορίζοντας τα κελιά της πρώτης σειράς ως τίτλους κάθε στήλης:</p>\r\n\r\n<p><em>&lt;table&gt;<br />\r\n&nbsp; &nbsp; &lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Τίτλος στήλης 1&lt;/th&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;th&gt;Τίτλος στήλης 2&lt;/th&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 1, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 1, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp;&lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp;&lt;/tr&gt;<br />\r\n&lt;/table&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Δημιουργία απλού πίνακα\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_simple_table.png\" style=\"height:509px; width:452px\" /><br />\r\n<em>Δημιουργία απλού πίνακα</em></p>\r\n\r\n<p>Οι παράμετροι που μπορεί να δεχτεί το στοιχείο table είναι:</p>\r\n\r\n<ul>\r\n	<li>align (left, right, center): οριζόντια στοίχιση του πίνακα</li>\r\n	<li>width (π.χ. 300, 90%): πλάτος του πίνακα σε pixel ή σε ποσοστό</li>\r\n	<li>border (π.χ. 0, 1, 2 κλπ): μέγεθος του περιγράμματος των κελιών σε pixel</li>\r\n	<li>cellspacing (π.χ. 0, 1, 2 κλπ): το περιθώριο σε pixel μεταξύ των κελιών</li>\r\n	<li>cellpadding (π.χ. 0, 1, 2 κλπ): το περιθώριο σε pixel μεταξύ του περιεχομένου και του κελιού</li>\r\n	<li>bgcolor (π.χ. red ή #FF0000): το χρώμα του φόντου του πίνακα</li>\r\n	<li>background: ορισμός μίας εικόνας ως φόντο του πίνακα</li>\r\n</ul>\r\n\r\n<p>Συνδυάζοντας κάποια από τα παραπάνω, μπορούμε να έχουμε:</p>\r\n\r\n<p><em>&lt;table align=&quot;center&quot; width=&quot;400&quot; border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;10&quot;&gt;<br />\r\n&nbsp; &nbsp;&lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&lt;th&gt;Τίτλος στήλης 1&lt;/th&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&lt;th&gt;Τίτλος στήλης 2&lt;/th&gt;<br />\r\n&nbsp; &nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &nbsp;&lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 1, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 1, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&lt;/table&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Δημιουργία πίνακα με χρήση βασικών ιδιοτήτων του\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_table.png\" style=\"height:500px; width:456px\" /><br />\r\n<em>Δημιουργία πίνακα με χρήση βασικών ιδιοτήτων του</em></p>\r\n\r\n<p>Οι παράμετροι που μπορούν να ενσωματωθούν στα tags tr, th και td είναι:</p>\r\n\r\n<ul>\r\n	<li>nowrap: δεν επιτρέπει την αναδίπλωση του κειμένου σε ένα κελί</li>\r\n	<li>rowspan (π.χ. 1, 2 κλπ): ο αριθμός των γραμμών που καταλαμβάνονται από ένα κελί</li>\r\n	<li>colspan (π.χ. 1, 2 κλπ): ο αριθμός των στηλών που καταλαμβάνονται από ένα κελί</li>\r\n	<li>width: πλάτος κελιού</li>\r\n	<li>height: ύψος κελιού</li>\r\n	<li>align: οριζόντια στοίχιση του περιεχομένου σε ένα κελί</li>\r\n	<li>valign: κάθετη στοίχιση του περιεχομένου σε ένα κελί</li>\r\n	<li>bgcolor: ορισμός του χρώματος του φόντου μιας σειράς ή ενός κελιού</li>\r\n</ul>\r\n\r\n<p><em>&lt;table align=&quot;center&quot; width=&quot;400&quot; border=&quot;1&quot; cellpadding=&quot;5&quot; cellspacing=&quot;10&quot;&gt;<br />\r\n&nbsp; &nbsp;&lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&lt;th&gt;Τίτλος στήλης 1&lt;/th&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&lt;th&gt;Τίτλος στήλης 2&lt;/th&gt;<br />\r\n&nbsp; &nbsp;&lt;/tr&gt;<br />\r\n&nbsp; &nbsp;&lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td colspan=&quot;2&quot; align=&quot;center&quot;&gt;Σειρά 1, Κελί 1 + 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 2, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &lt;tr &gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td rowspan=&quot;2&quot; valign=&quot;top&quot;&gt;Σειρά 3 + 4, Κελί 1&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 3, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&nbsp; &nbsp; &lt;tr&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;td&gt;Σειρά 4, Κελί 2&lt;/td&gt;<br />\r\n&nbsp; &nbsp; &lt;/tr&gt;<br />\r\n&lt;/table&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Δημιουργία πίνακα με χρήση ιδιοτήτων των κελιών\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_table_cells.png\" style=\"height:500px; width:454px\" /><br />\r\n<em>Δημιουργία πίνακα με χρήση ιδιοτήτων των κελιών</em></p>\r\n'),
       (1, 'Forms',
        '<p>Οι φόρμες χρησιμοποιούνται για να σταλεί πληροφορία από τον web browser στο web server. Μερικά παραδείγματα χρήσης είναι η φόρμα επικοινωνίας όπου συμπληρώνει ο χρήστης ένα μήνυμα και αυτό αποστέλλεται στο διαχειριστή της ιστοσελίδας, η φόρμα δημιουργίας λογαριασμού σε μία ιστοσελίδα ή η φόρμα εισόδου σε κάποια ιστοσελίδα με καταχώρηση ονόματος χρήστη και κωδικού. Επίσης, οι ιστοσελίδες δυναμικού περιεχομένου έχουν κατάλληλο σύστημα διαχείρισης προσβάσιμο μόνο από το διαχειριστή της ιστοσελίδας και μέσα από το οποίο, με τη χρήση ανάλογων φορμών, ρυθμίζει το περιεχόμενο της ιστοσελίδας που θα είναι ορατό από τους υπόλοιπους χρήστες. Τη διαχείριση της πληροφορίας που αποστέλλεται, την επεξεργάζεται ο server με τη βοήθεια μίας server-side γλώσσας (στην περίπτωσή μας η PHP) και προβαίνει στις απαραίτητες ενέργειες. Για παράδειγμα, αν τα στοιχεία εισόδου σε μια ιστοσελίδα δεν είναι καταχωρημένα στη βάση δεδομένων, εμφανίζει το ανάλογο μήνυμα. Διαφορετικά, κάνει εισαγωγή του χρήστη στην ιστοσελίδα παρέχοντάς του πρόσβαση σε επιπρόσθετη πληροφορία.</p>\r\n\r\n<p>Μία φόρμα δημιουργείται με την ετικέτα &lt;form&gt; και περιέχει στοιχεία καταχώρησης πληροφορίας. &nbsp;Οι παράμετροι που δέχεται μία φόρμα είναι οι εξής:</p>\r\n\r\n<ul>\r\n	<li>action: ορίζει το url που θα χρησιμοποιηθεί από τον server για να επξεργαστεί τα στοιχεία της φόρμας</li>\r\n	<li>method (get ή post): ορίζει τη μέθοδο αποστολής των δεδομένων της φόρμας. Η μέθοδος get εμφανίζει τα δεδομένα στη διεύθυνση μπάρας του browser ενώ η post δεν τα στέλνει στο server χωρίς να τα εμφανίζει</li>\r\n	<li>enctype: ορίζει τη μέθοδο αποκωδικοποίησης των δεδομένων</li>\r\n</ul>\r\n\r\n<p>Περισσότερες λεπτομέρειες θα δούμε σε επόμενα κεφάλαια, όπου θα δούμε πώς μπορούμε να διαχειριστούμε τα δεδομένα με τη βοήθεια της PHP.</p>\r\n\r\n<p>Για να μπορέσει ο χρήστης να χρησιμοποιήσει μία φόρμα, θα πρέπει να έχει τη δυνατότητα να καταχωρεί περιεχόμενο. Αυτό επιτυγχάνεται με τα παρακάτω tags:</p>\r\n\r\n<p><strong>Html tag - &lt;input&gt;</strong><br />\r\nΥπάρχουν διάφορα είδη στοιχείων input, κάθε ένα από τα οποία ορίζεται από την ιδιότητα type του tag &lt;input&gt;. Κάθε είδος, μπορεί να δεχθεί και ανάλογες παραμέτρους. Οι δυνατές τιμές της ιδιότητας type είναι οι εξής:</p>\r\n\r\n<table cellpadding=\"4\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Τιμή της ιδιότητας type</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Περιγραφή</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Επιπλέον ιδιότητες</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>text</p>\r\n			</td>\r\n			<td>\r\n			<p>κείμενο μιας γραμμής</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>size: μέγεθος του box</li>\r\n				<li>maxlength: μέγιστος αριθμός χαρακτήρων</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>password</p>\r\n			</td>\r\n			<td>\r\n			<p>όμοιο με το text αλλά αντικαθιστά κάθε χαρακτήρα με * για εισαγωγή κωδικού</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>size: μέγεθος του box</li>\r\n				<li>maxlength: μέγιστος αριθμός χαρακτήρων</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>checkbox</p>\r\n			</td>\r\n			<td>\r\n			<p>χρησιμοποιείται για τη δυνατότητα επιλογής πολλαπλών τιμών από μία λίστα</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>checked: αν είναι προεπιλεγμένο</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>radio</p>\r\n			</td>\r\n			<td>\r\n			<p>χρησιμοποιείται για τη δυνατότητα επιλογής μία μόνο τιμής από μία λίστα</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>checked: αν είναι προεπιλεγμένο</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>hidden</p>\r\n			</td>\r\n			<td>\r\n			<p>το πεδίο είναι κρυφό, ωστόσο έχει τιμή που αποστέλλεται κανονικά στο server</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>file</p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>\r\n				<p>χρησιμοποιείται για τη δυνατότητα ανεβάσματος (upload) αρχείου</p>\r\n				</li>\r\n				<li>\r\n				<p>πρέπει το enctype της φόρμας να είναι έχει την τιμή multipart/form-data</p>\r\n				</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>reset</p>\r\n			</td>\r\n			<td>\r\n			<p>επαναφέρει τα δεδομένα στην αρχική τους τιμή</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>button</p>\r\n			</td>\r\n			<td>\r\n			<p>δημιουργία button</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>submit</p>\r\n			</td>\r\n			<td>\r\n			<p>δημιουργία button αποστολής δεδομένων</p>\r\n			</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Υπάρχουν και παράμετροι που ισχύουν για όλα τα παραπάνω, όπως:</p>\r\n\r\n<ul>\r\n	<li>name: η ονομασία του στοιχείου, η οποία χρησιμοποιείται από την PHP για να τραβήξει την τιμή του πεδίου</li>\r\n	<li>value: η τιμή ενός πεδίου</li>\r\n</ul>\r\n\r\n<p>Ο παρακάτω κώδικας δημιουργεί μία φόρμα χρησιμοποιώντας κάποια από τα παραπάνω πεδία input.</p>\r\n\r\n<p><em>&lt;form method=&quot;get&quot; action=&quot;register.php&quot;&gt;<br />\r\n&lt;p&gt;Όνομα: &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;&quot; /&gt;&lt;/p&gt;<br />\r\n&lt;p&gt;Επώνυμο: &lt;input type=&quot;text&quot; name=&quot;lastname&quot; value=&quot;&quot; /&gt;&lt;/p&gt;<br />\r\n&lt;p&gt;<br />\r\nΗλικία: &lt;br /&gt;<br />\r\n18 - 25: &lt;input type=&quot;radio&quot; name=&quot;age&quot; value=&quot;18-25&quot; checked=&quot;checked&quot; /&gt;&lt;br /&gt;<br />\r\n26 - 35: &lt;input type=&quot;radio&quot; name=&quot;age&quot; value=&quot;36&quot; /&gt;&lt;br /&gt;<br />\r\n36+: &lt;input type=&quot;radio&quot; name=&quot;age&quot; value=&quot;36_&quot; /&gt;&lt;br /&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;p&gt;Κωδικός: &lt;input type=&quot;password&quot; name=&quot;password&quot; value=&quot;&quot; /&gt;&lt;/p&gt;<br />\r\n&lt;p&gt;Επιβεβαίωση κωδικού: &lt;input type=&quot;password&quot; name=&quot;confirm&quot; value=&quot;&quot; /&gt;&lt;/p&gt;<br />\r\n&lt;p&gt;<br />\r\nΕνδιαφέροντα:&lt;br /&gt;<br />\r\nΜουσική &lt;input name=&quot;hobby&quot; type=&quot;checkbox&quot; value=&quot;Μουσική&quot; /&gt;&lt;br /&gt;<br />\r\nΑθλητισμός &lt;input name=&quot;hobby&quot; type=&quot;checkbox&quot; value=&quot;Αθλητισμός&quot; /&gt;&lt;br /&gt;<br />\r\nΛογοτεχνία &lt;input name=&quot;hobby&quot; type=&quot;checkbox&quot; value=&quot;Λογοτεχνία&quot; /&gt;&lt;br /&gt;<br />\r\nΆλλο &lt;input name=&quot;hobby&quot; type=&quot;checkbox&quot; value=&quot;Άλλο&quot; checked=&quot;checked&quot; /&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;p&gt;<br />\r\n&lt;input type=&quot;reset&quot; value=&quot;Καθαρισμός&quot; /&gt;<br />\r\n&lt;input type=&quot;submit&quot; value=&quot;Αποστολή&quot; /&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;/form&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση του html tag\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_input.png\" style=\"height:647px; width:453px\" /><br />\r\n<em>Δημιουργία φόρμας με χρήση των πεδίων input</em></p>\r\n\r\n<p><strong>Html tag - &lt;textarea&gt;</strong><br />\r\nΤο στοιχείο textarea δίνει τη δυνατότητα στο χρήστη να εισάγει κείμενο πολλαπλών γραμμών. Η τιμή του πεδίου δεν εισάγεται στην παράμετρο value αλλά περικλείεται ανάμεσα στο ζεύγος &lt;textarea&gt; και &lt;textarea&gt;. Επιπλέον ιδιότητες που υποστηρίζονται είναι οι:</p>\r\n\r\n<ul>\r\n	<li>rows: αριθμός γραμμών του πεδίου</li>\r\n	<li>cols: αριθμός στηλών του πεδίου</li>\r\n</ul>\r\n\r\n<p><strong>Html tag - &lt;select&gt;</strong><br />\r\nΔημιουργεί μία λίστα επιλογών. Κάθε επιλογή της λίστας δημιουργείται με το tag &lt;option&gt;<br />\r\nΤο στοιχείο select επιτρέπει μία υποχρεωτικά επιλογή αντικειμένου, εκτός αν χρησιμοποιηθεί η ιδιότητα multiple, οπότε μπορεί να επιλεχθούν από τη λίστα παραπάνω από ένα αντικείμενα ή και κανένα. Το στοιχείο option, εκτός από την ιδιότητα value, δέχεται και την παράμετρο selected (με τιμή &ldquo;selected&rdquo;) για να δηλώσουμε ότι είναι προεπιλεγμένη.</p>\r\n\r\n<p><em>&lt;h3&gt;Φόρμα επικοινωνίας&lt;/h3&gt;<br />\r\n&lt;form method=&quot;get&quot; action=&quot;contact.php&quot;&gt;<br />\r\n&lt;p&gt;<br />\r\nΠρος:&lt;br /&gt;<br />\r\n&lt;select name=&quot;destination&quot;&gt;<br />\r\n&lt;option value=&quot;Γραμματεία&quot; selected=&quot;selected&quot;&gt;Γραμματεία&lt;/option&gt;<br />\r\n&lt;option value=&quot;Μηχανογράφηση&quot;&gt;Μηχανογράφηση&lt;/option&gt;<br />\r\n&lt;option value=&quot;Λογιστήριο&quot;&gt;Μηχανογράφηση&lt;/option&gt;<br />\r\n&lt;/select&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;p&gt;<br />\r\nΠρος: (δυνατότητα πολλαπλών επιλογών)&lt;br /&gt;<br />\r\n&lt;select name=&quot;destination_multiple&quot; multiple=&quot;multiple&quot;&gt;<br />\r\n&lt;option value=&quot;Γραμματεία&quot; selected=&quot;selected&quot;&gt;Γραμματεία&lt;/option&gt;<br />\r\n&lt;option value=&quot;Μηχανογράφηση&quot;&gt;Μηχανογράφηση&lt;/option&gt;<br />\r\n&lt;option value=&quot;Λογιστήριο&quot;&gt;Μηχανογράφηση&lt;/option&gt;<br />\r\n&lt;/select&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;p&gt;&lt;textarea name=&quot;message&quot; rows=&quot;5&quot; cols=&quot;50&quot;&gt;Εισάγετε το κείμενό σας&lt;/textarea&gt;&lt;/p&gt;<br />\r\n&lt;input type=&quot;submit&quot; value=&quot;Αποστολή&quot; /&gt;<br />\r\n&lt;/p&gt;<br />\r\n&lt;/form&gt;</em></p>\r\n\r\n<p style=\"text-align:center\"><em><img alt=\"Χρήση των στοιχείων select και textarea\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_select_textarea.png\" style=\"height:507px; width:530px\" /></em><br />\r\n<em>Χρήση των στοιχείων select και textarea</em></p>\r\n'),
       (1, 'Other HTML tags',
        '<p><strong>Html tag - &lt;div&gt;</strong><br />\r\nΤο στοιχείο div χρησιμοποιείται για να περικλείει άλλα tags και να δημιουργεί ομάδες από στοιχεία. Ενώ σε πρώτη όψη δε φαίνεται ιδιαίτερα σημαντικό, θα αποδειχθεί στην πορεία ότι χρησιμοποιείται σε πολύ μεγάλο βαθμό και, σε συνδυασμό με τα css που θα δούμε στο επόμενο κεφάλαιο, μπορούμε να φτιάξουμε τη διάταξη της σελίδας.</p>\r\n\r\n<p><strong>Html tag - &lt;span&gt;</strong><br />\r\nΤο στοιχείο span χρησιμοποιείται λιγότερο σε σχέση με το div και μας δίνει τη δυνατότητα να ορίσουμε ένα συγκεκριμένο στυλ εμφάνισης σε συγκεκριμένα σημεία του κώδικα.</p>\r\n\r\n<p><em>&lt;div&gt;1ο div&lt;/div&gt;<br />\r\n&lt;div&gt;2ο div&lt;/div&gt;<br />\r\nΤο κείμενο γίνεται &lt;span style=&quot;color:red;&quot;&gt;κόκκινο&lt;/span&gt;.</em></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Χρήση των div και span\" src=\"/edu/assets/js/ckeditor/plugins/fileman/Uploads/Images/web_development/html_div_span.png\" style=\"height:285px; width:289px\" /><br />\r\n<em>Χρήση των div και span</em></p>\r\n');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '1');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '1');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '1');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '1');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '2');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '2');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '2');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '2');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '2');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '3');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '3');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '3');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '3');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '3');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '4');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '4');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '4');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '4');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '4');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '5');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '5');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '5');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '5');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '5');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '6');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '6');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '6');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '6');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '6');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '7');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '7');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '7');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '7');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '7');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '8');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '8');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '8');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '8');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '8');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '9');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '9');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '9');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '9');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '9');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '10');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '10');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '10');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '10');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '10');

INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 1', '11');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 2', '11');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 3', '11');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 4', '11');
INSERT INTO `question` (`id`, `description`, `chapter_id`)
VALUES (NULL, 'Question 5', '11');

INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 1);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 1);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 1);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 1);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 2);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 2);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 2);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 2);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 3);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 3);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 3);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 4);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 4);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 4);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 4);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 5);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 5);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 5);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 6);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 6);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 6);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 7);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 7);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 7);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 7);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 8);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 8);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 8);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 9);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 9);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 9);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 9);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 10);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 10);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 10);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 10);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 11);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 11);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 11);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 11);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 12);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 12);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 12);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 13);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 13);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 13);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 14);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 14);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 14);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 15);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 15);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 15);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 15);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 16);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 16);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 16);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 16);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 17);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 17);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 17);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 18);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 18);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 18);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 18);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 19);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 19);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 19);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 19);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 20);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 20);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 20);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 20);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 21);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 21);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 21);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 21);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 22);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 22);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 22);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 23);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 23);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 23);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 24);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 24);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 24);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 24);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 25);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 25);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 25);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 25);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 26);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 26);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 26);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 27);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 27);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 27);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 27);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 28);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 28);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 28);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 29);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 29);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 29);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 30);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 30);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 30);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 30);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 31);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 31);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 31);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 32);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 32);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 32);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 33);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 33);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 33);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 34);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 34);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 34);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 34);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 35);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 35);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 35);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 35);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 36);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 36);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 36);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 36);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 37);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 37);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 37);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 37);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 38);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 38);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 38);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 39);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 39);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 39);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 39);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 40);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 40);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 40);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 40);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 41);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 41);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 41);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 41);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 42);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 42);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 42);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 43);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 43);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 43);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 43);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 44);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 44);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 44);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 44);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 45);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 45);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 45);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 46);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 2', 46);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 46);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 47);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 47);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 47);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 47);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 48);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 48);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 48);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 4', 48);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 49);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 49);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 49);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 4', 49);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 50);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 50);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 50);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 51);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 51);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 51);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 52);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 52);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 52);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 1', 53);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 53);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 3', 53);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 54);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 54);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 54);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 1, 'Answer 1', 55);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 2', 55);
INSERT INTO `answer` (`id`, `correct`, `description`, `question_id`)
VALUES (NULL, 0, 'Answer 3', 55);
