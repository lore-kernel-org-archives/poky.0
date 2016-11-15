Return-Path: <jin@xn--80adja5bqm.su>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79667E0095F; Tue, 15 Nov 2016 03:17:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
X-Greylist: delayed 557 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Nov 2016 03:17:54 PST
Received: from xn--80adja5bqm.su (xn--80adja5bqm.su [64.137.223.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B13E0093B
	for <poky@yoctoproject.org>; Tue, 15 Nov 2016 03:17:54 -0800 (PST)
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 32D7A2030AE5; Tue, 15 Nov 2016 06:08:36 -0500 (EST)
DKIM-Filter: OpenDKIM Filter v2.10.3 xn--80adja5bqm.su 32D7A2030AE5
Date: Tue, 15 Nov 2016 06:08:36 -0500
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: poky@yoctoproject.org
Message-Id: <20161115110836.GA9906@xn--80adja5bqm.su>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: How to debug task hash mismatches?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Nov 2016 11:17:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I am migrating our setup from Yocto 2.0.2 to Yocto 2.2 and I ran into the
problem with task hash mismatches.

I found Richards commit 0a4a6d6956a10aa0a6589de12b0b2380a9f0a7d9 which
suggested to uncomment some debugging code in in poky/bitbake/lib/bb/siggen.py
and later it was hinted to me on IRC that master has more commits that
should help to find out where the mismatch is coming from, so in the meantime
I switched to master.

I did uncomment those lines in siggen.py, but the problem is that I can only 
find one hash, so I don't know what to diffsig...

I.e.:

ERROR: dss-1.38.0+gitr5781+0a32968-r1.1 do_populate_lic: Taskhash mismatch 9981d86bd31215aa722d7b2dc283fd1c versus fad0983c152e6b6b60fb1a5519bfeebb for /home/jin/dss-oe/yocto/dS/meta-digitalstrom-devel/recipes-digitalstrom/dss/dss_git.bb.do_populate_lic

[poky-devel-nopkg-build]$ find . | grep 9981d86bd31215aa722d7b2dc283fd1c
returns nothing.

[poky-devel-nopkg-build]$ find . | grep fad0983c152e6b6b60fb1a5519bfeebb
returns:

./build/stamps/armv7a-neon-poky-linux-gnueabi/dss/1.38.0+gitr5781+0a32968-r1.1.do_populate_lic.sigdata.fad0983c152e6b6b60fb1a5519bfeebb
./build/stamps/armv7a-neon-poky-linux-gnueabi/dss/1.38.0+gitr5781+0a32968-r1.1.do_populate_lic.fad0983c152e6b6b60fb1a5519bfeebb
./sstate-cache/fa/sstate:dss::1.38.0+gitr5781+0a32968:r1.1::3:fad0983c152e6b6b60fb1a5519bfeebb_populate_lic.tgz.siginfo
./sstate-cache/fa/sstate:dss::1.38.0+gitr5781+0a32968:r1.1::3:fad0983c152e6b6b60fb1a5519bfeebb_populate_lic.tgz

So, where do I find this 9981d86bd31215aa722d7b2dc283fd1c hash?
I tried to vardepsexclude some variables by trial and error, but did not get
anywhere...

I also noticed that upon cleanall/rebuild the hash 
fad0983c152e6b6b60fb1a5519bfeebb stays the same, while the other one changes.

I'm really blocked by this issue, so any help would be greately appreciated.

That being said, I imagine people run into this more often, so maybe it would
make sense to introduce a configuration variable that would allow to enable
the siggen debug code without having to edit the sources and which would also
provide more output or even some helper code that detects the mismatch and
diffsigs automatically?

Anyway, I'm OK with manual debugging... but how do I do it? :)

Kind regards,
Sergey


