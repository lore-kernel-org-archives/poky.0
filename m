Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 185F84C80578
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 15:49:06 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Apr 2011 13:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,270,1301900400"; 
	d="diff'?scan'208";a="738822448"
Received: from unknown (HELO [10.255.13.84]) ([10.255.13.84])
	by orsmga001.jf.intel.com with ESMTP; 26 Apr 2011 13:49:05 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Michael Sundius <msundius@cisco.com>
Date: Tue, 26 Apr 2011 13:49:04 -0700
References: <4DB6FA1F.3010607@cisco.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9501169C63EC@orsmsx504.amr.corp.intel.com>
	<4DB70FAC.5050105@cisco.com>
In-Reply-To: <4DB70FAC.5050105@cisco.com>
X-Mailer: Evolution 3.0.0 (3.0.0-1.fc15) 
Message-ID: <1303850945.28281.53.camel@scimitar>
Mime-Version: 1.0
Cc: poky <poky@yoctoproject.org>
Subject: Re: yacto image builder and eclipse plugin for yacto
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Apr 2011 20:49:07 -0000
X-Groupsio-MsgNum: 5566
Content-Type: multipart/mixed; boundary="=-pzKb9OJL2HLzigSaR6oH"

--=-pzKb9OJL2HLzigSaR6oH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-26 at 12:32 -0600, Michael Sundius wrote:
> 
> > -----Original Message-----
> > From: Michael Sundius [mailto:msundius@cisco.com]
> >   
> > ... He was also talking about an "image builder" tool
> > where a loadable target image could be created from a gui which provides
> > the means to select which packages or groups of packages are
> > installed, the format could be selected and possibly some configurable
> > post processing, could be done.
> >
> > I have some thoughts and questions about such a tool (the image builder)
> > and was wondering if I might pick your brain about it OR if your not
> > the person, you might know who is.
> >   
> Zhang, Jessica wrote:
> > Hi Michael,
> >
> > Josh (cc'd here) is the person mainly working on the "image creator" the UI to bitbake and my team is working with him on delivery image creator for Yocto 1.1.  So you can send your questions to us, as an open source project, we generally encourage people to send their questions to poky@yoctoproject.org mailing list to stir a public discussion, so you can take that route as well.
> >
> > Thanks,
> > Jessica
> >   
> 
> Thanks for your reply Jessica,
> 
> In particular our work flow goes like this:
> 
> 1) we build a distro that is to run on our set top box from that we 
> create two results:
>     a) a image that we can load directly on the set top box
>     b) an sdk which our customers to be given to our non OE accecpting 
> customers
> 2) Those customers will develop applications based on the SDK
> 3)  our customers need to create a similar image to the one we made in 
> "1a" above plus their application
> 
> So what, we've done in the past was to create an image in OE and then 
> install it in the SDK as a tarball. Then provide a makefile that creates 
> the image from the tarball.
> 
> this is a little ugly. what we'd really like to have is an "image 
> creator" which can simply select the packages (from some feed somewhere) 
> and install them just as
> bitbake does.
> 
> QUESTIONS
>  so does your image creator use bitbake? or is it stand alone from the 
> rest of OE/Yacto such that we could simply provide the image creator 
> along with our sdk (and a link to a package feed).

Our image creator is a Bitake UI (front-end). Development is currently
being done within the Poky repository but we hope to move that to
upstream BitBake within the next couple of weeks as the two divergent
codebases merge.

> 
> If not, could you envision your tool to be made to work that way (given 
> we provide a bit of effort from our end).
> 
> where can I go to see how the image creator works? could I download and 
> try it out?

Right now the code that we have is very prototype. You can get a feel
for the direction we're taking but the resultant images aren't well
tested.

Furthermore I'm not certain how well the code in upstream's repositories
work. For a snapshot of the current state of things you can use a clone
of latest Poky[2] with the attached patch applied (the xml-rpc server
currently offers a better experience - we're working to fix this).

Those disclaimers aside:

bitbake -u hob

will launch the image creator.

> I think we'd like to contribute to this effort if we could.

You'd be very welcome and now would be a great time to do so! :-) 

You can see the work I have planned and in progress at:
https://wiki.yoctoproject.org/wiki/BitBake/GUI/PostOneOh

Note: Bugs can be filed against the image creator component at
http://bugzilla.yoctoproject.org/enter_bug.cgi?product=Build%20System

Regards,
Joshua

Note: I've fixed the CC for the poky mailing list.
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre

--=-pzKb9OJL2HLzigSaR6oH
Content-Description: use-xmlrpc.diff
Content-Disposition: attachment; filename="use-xmlrpc.diff"; size=927; creation-date="Tue, 26 Apr 2011 14:46:18 GMT"; modification-date="Tue, 26 Apr 2011 14:46:18 GMT"
Content-Type: text/x-patch; name="use-xmlrpc.diff"; charset="UTF-8"
Content-Transfer-Encoding: 7bit

diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
index 6d05289..e18671a 100755
--- a/bitbake/bin/bitbake
+++ b/bitbake/bin/bitbake
@@ -39,8 +39,8 @@ import bb.msg
 from bb import cooker
 from bb import ui
 from bb import server
-from bb.server import none
-#from bb.server import xmlrpc
+#from bb.server import none
+from bb.server import xmlrpc
 
 __version__ = "1.11.0"
 logger = logging.getLogger("BitBake")
@@ -175,8 +175,8 @@ Default BBFILES are the .bb files in the current directory.""")
     loghandler = event.LogHandler()
     logger.addHandler(loghandler)
 
-    #server = bb.server.xmlrpc
-    server = bb.server.none
+    server = bb.server.xmlrpc
+    #server = bb.server.none
 
     # Save a logfile for cooker into the current working directory. When the
     # server is daemonized this logfile will be truncated.

--=-pzKb9OJL2HLzigSaR6oH--
