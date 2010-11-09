Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 461814C80BCF
	for <poky@pokylinux.org>; Mon,  8 Nov 2010 21:41:33 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA93fWNr010782
	for <poky@pokylinux.org>; Tue, 9 Nov 2010 03:41:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 10525-04 for <poky@pokylinux.org>;
	Tue,  9 Nov 2010 03:41:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA93fGa4010775
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@pokylinux.org>; Tue, 9 Nov 2010 03:41:24 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: poky <poky@pokylinux.org>
Date: Tue, 09 Nov 2010 11:38:32 +0800
Message-ID: <1289273912.1272.24.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Bitbake fetchers
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
X-List-Received-Date: Tue, 09 Nov 2010 03:41:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I've talked with various people about the bitbake fetchers and I think
the time has come for an overhaul. I'm going to take the opportunity to
write down all the various issues I've seen with the current approach so
we can then come up with a plan and some changes to address this.

Some things that currently bother me:

a) For a git checkout, we clone the repository, make a checkout, tar
this up, then do_unpack task untars it. This is inefficient to say the
least.

b) For git controlled sources, we "lose" the .git directory in the
workdir. For any git checkout, I'd like this to be available.

c) Even when git recipes have the SRCREV specified to a fixed value, the
recipe always gets reparsed as there is no way to tell if its locked
down or could float (with AUTOREV). We shouldn't be reparsing.

d) There is no way to set two SRCREV values for different branches of
the same git repository without two entries in SRC_URI. Knowing when to
update a multi revision bare clone git repository is hard with the
information spread over two SRC_URI entries.

e) Its hard to configure bitbake to be "networkless", or to turn off the
default SRC_URI entries and force bitbake to only use a mirror, or a
local directory.

f) The whole of the fetcher code has grown orgnaically and doesn't have
an overall design or a sensible API for accessing it.

g) SRCREV has to be set in the configuration space, not in recipe space.
We should support it in recipe space but this will mean caching values
and providing them to the main configuration space. This is a bitbake
parsing/data caching issue rather than a fetcher one.

h) The error handling and propagation of errors appears to have issues
in places.

i) Its hard to enable/disable SCM mirror tarballs at present (this
should be optional as they'd really become unneeded).

From a design standpoint I'd therefore like to create a "fetch2"
directory in bitbake and try and redesign the fetchers there with a
sensible API learning from the codebase we already have. In places this
will no doubt use the same code but I'd like to take a step back and
restructure it.

To address some of the problems above, I'd like to see the do_unpack
task that Poky/OE have, call into the fetcher rather than have the code
in Poky/OE clases. This means the likes of the git checkouts can be
optimised and a checkout into WORKDIR can just be a git clone by
reference (see man git-clone). This probably needs to be through
symlinks and not hardlinks as DL_DIR and WORKDIR can be on different
filesystems.

There are some complexities in the fetcher code:

a) There is the issue of caching, we try and cache the parsed SRC_URI
rather than reparse it multiple times.

b) SRCREV = "${AUTOREV}" introduces a lot of complexity as it has to
inject the git revision into the PV variable which is widely used. This
is partly the reason a) above is needed. The value for PV needs to be
computed at parse time, not task execution, further complicating the
model.

c) Sometimes, we need to "fetch" different data so we change the values
of SRC_URI, the mirrors and DL_DIR. These things therefore need to be
configurable. An example user is the sstate fetcher code. Another
example is the checkuri task. It would be nice if for a given recipe,
the fetcher could give feedback about whether the main SRC_URI works
with no mirror and which mirrors had the file availability.

These complexities need to be addressed in the rewrite to ensure
features still work.

I'm sure there are other things I'm missing on these lists but hopefully
this is a good start at documenting them. If anyone has further issues
to add, I'd be interested to hear about them.

Cheers,

Richard




