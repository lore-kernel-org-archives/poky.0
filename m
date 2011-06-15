Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 240194C800C1
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 01:04:25 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWjDD-0001zg-B4
	for poky@pokylinux.org; Wed, 15 Jun 2011 08:04:23 +0200
Received: from 79.167.211.68 ([79.167.211.68])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 08:04:23 +0200
Received: from gmane by 79.167.211.68 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 15 Jun 2011 08:04:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 15 Jun 2011 09:04:05 +0300
Organization: Reliable Embedded Systems
Message-ID: <it9i0l$1bl$1@dough.gmane.org>
References: <it88ph$j2v$1@dough.gmane.org>
	<4DF7B675.6050304@linux.intel.com>	<it8hss$c59$1@dough.gmane.org>
	<4DF7D6E4.2020908@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.211.68
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DF7D6E4.2020908@linux.intel.com>
Subject: Re: bernard-5.0.1, poky-image-lsb, beagle, build error
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Jun 2011 06:04:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 06/15/2011 12:47 AM, Saul Wold wrote:
> Then it should pick it up.  Coulg you run a bitbake -DD -v psmisc -c
> fetch and send me the out put, on the failing build that you have?
> 

It magically healed over night;)

NOTE: fetch http://downloads.sourceforge.net/psmisc/psmisc-22.2.tar.gz
DEBUG: executing /usr/bin/env wget -t 5 -q --passive-ftp -P
/work/rber/downloads
'http://downloads.sourceforge.net/psmisc/psmisc-22.2.tar.gz'
DEBUG: Fetcher accessed the network with the command /usr/bin/env wget
-t 5 -q --passive-ftp -P /work/rber/downloads
'http://downloads.sourceforge.net/psmisc/psmisc-22.2.tar.gz'

Yesterday night it could not fetch it from this location, but in the
meantime I guess someone cooked something on sourceforge and points to
the new location of the file.

wget http://downloads.sourceforge.net/psmisc/psmisc-22.2.tar.gz
--2011-06-15 09:00:30--
http://downloads.sourceforge.net/psmisc/psmisc-22.2.tar.gz
Resolving downloads.sourceforge.net... 216.34.181.59
Connecting to downloads.sourceforge.net|216.34.181.59|:80... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location:
http://downloads.sourceforge.net/project/psmisc/psmisc/22.2/psmisc-22.2.tar.gz
[following]
--2011-06-15 09:00:31--
http://downloads.sourceforge.net/project/psmisc/psmisc/22.2/psmisc-22.2.tar.gz
Reusing existing connection to downloads.sourceforge.net:80.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location:
http://mesh.dl.sourceforge.net/project/psmisc/psmisc/22.2/psmisc-22.2.tar.gz
[following]
--2011-06-15 09:00:31--
http://mesh.dl.sourceforge.net/project/psmisc/psmisc/22.2/psmisc-22.2.tar.gz
Resolving mesh.dl.sourceforge.net... 213.203.218.122
Connecting to mesh.dl.sourceforge.net|213.203.218.122|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 244247 (239K) [application/x-gzip]
Saving to: `psmisc-22.2.tar.gz'

100%[===================================================================================>]
244,247      345K/s   in 0.7s

2011-06-15 09:00:32 (345 KB/s) - `psmisc-22.2.tar.gz' saved [244247/244247]


> This might help identify if there's a problem.
> 
> Thanks
>     Sau!
> 

Regards,

Robert
..."You are in a twisty little passage of standards, all conflicting." -
Michael Meissner, meissner@osf.org

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



