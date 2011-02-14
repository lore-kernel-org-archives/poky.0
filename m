Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B2F324C80546
	for <poky@lists.pokylinux.org>; Mon, 14 Feb 2011 17:43:47 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 5BD61166027C; Mon, 14 Feb 2011 16:43:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7C6FA16601E2;
	Mon, 14 Feb 2011 16:43:44 -0700 (MST)
Message-ID: <4D59BE30.9050802@mlbassoc.com>
Date: Mon, 14 Feb 2011 16:43:44 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Controlling package build ordering
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
X-List-Received-Date: Mon, 14 Feb 2011 23:43:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a modified version of poky-feed-config-opkg which
actually builds an opkg database (as opposed to the default
which does not).  I've set it so that my base-feeds.conf
only contains entries for valid package sets like this:

            for arch in $ipkgarchs; do
                # Only export real directories
                if [ -d "${DEPLOY_DIR}/ipk/${arch}" ]; then
                        echo "src/gz ${FEEDNAMEPREFIX}-$arch ${FEEDURIPREFIX}/$arch" >> $basefeedconf
                fi
            done

As you can see, only those entries which have some packages
will be included.

The problem I have is _when_ my feed-config-opkg.bb is actually
built.  If I start from scratch, it gets built pretty early and
the ipk tree is often quite empty, perhaps only containing
a single collection.  If I rerun this at the end, say after
building a complete image, then I get a complete set of entries.

What I'd like to do is find a way to postpone the building of
this recipe until very late, hopefully just before the final
image is built.

Is there any way to fine tune the build and accomplish this?

Note: if I leave out the test for valid subdirectories it all
works but then I get errors at runtime complaining about the
empty collections.  This is what I'd like to avoid.

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

