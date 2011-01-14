Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 668394C80039
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:06:00 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 2A4171660135; Fri, 14 Jan 2011 15:05:59 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id BF9551660108;
	Fri, 14 Jan 2011 15:05:57 -0700 (MST)
Message-ID: <4D30C8C5.3060803@mlbassoc.com>
Date: Fri, 14 Jan 2011 15:05:57 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Yu Ke <ke.yu@intel.com>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<4D20B2B2.3090602@mlbassoc.com> <20110106071418.GB20168@kyu3-hedt>
	<4D25DA71.2030101@mlbassoc.com> <20110107075508.GG20168@kyu3-hedt>
In-Reply-To: <20110107075508.GG20168@kyu3-hedt>
Cc: poky@yoctoproject.org
Subject: Re: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Fri, 14 Jan 2011 22:06:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/07/2011 12:55 AM, Yu Ke wrote:
> On Jan 06, 08:06, Gary Thomas wrote:
>> On 01/06/2011 12:14 AM, Yu Ke wrote:
>>> On Jan 02, 10:15, Gary Thomas wrote:
>>>> On 01/02/2011 10:08 AM, Koen Kooi wrote:
>>>>> Hi,
>>>>>
>>>>> I would like to have the fetchter try my PREMIRROS first before trying to fetch from git. In OE I have the following in a bbclass:
>>>>>
>>>>> PREMIRRORS_append () {
>>>>> git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
>>>>> }
>>>>>
>>>>> When used in OE that works, but in yocto it doesn't. So I tried to do it poky style in a .inc:
>>>>>
>>>>> PREMIRRORS_append = "\
>>>>> git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
>>>>>
>>>>> Which also doesn't work since it doesn't try to fetch from there, but it does mention "http:/www.angstrom-distribution.org/sources/" in the fetch error message when git read-tree fails.
>>>>>
>>>>> So my question: how do I make it work in yocto like it works in OE?
>>>>
>>>> I too have been struggling with this as I'd like to have
>>>> a local repository to hold the current source set.  Sadly,
>>>> as you've observed, it doesn't work, at least not as expected.
>>>
>>> I've tried to use file:///some/dir as PREMIRROR, and found it does has issue. The main reason is that the local.py fetcher does not do real copy in go() method. Although it make sense in normal fetch case, it does cause trouble in try_mirror() case.
>>>
>>> I don't have simple idea to address this issue yet and I will take care of it in the coming fetcher change. As a quick workaround, could you try this approach: use http://local/some/dir as PREMIRROR? e.g. if you use /opt/source as mirror, you can add to meta/conf/distro/poky.conf:
>>> PREMIRRORS_append = "\
>>> git://.*/.*   http://local/opt/source/ \n \
>>> svn://.*/.*   http://local/opt/source/ \n \
>>> ...
>>> "
>>>
>>> in this case, wget.py fetcher will be used, and it works fine in try_mirror() case. Also the /opt/source can be read-only.
>>
>> Per my example, I set both PREMIRRORS and MIRRORS to use these paths.
>>
>> This _works_ (in that it doesn't fail), but it doesn't always
>> seem to use my local MIRROR copy.  After an abreviated build from
>> scratch, I found that these files _were_ copied from my local
>> MIRROR:
>>    automake-1.11.1.tar.bz2
>>    m4-1.4.15.tar.gz
>>    autoconf-2.65.tar.bz2
>>    libtool-2.4.tar.gz
>>    ncurses-5.4.tar.gz
>>    gdbm-1.8.3.tar.gz
>>    gzip-1.4.tar.gz
>>    readline-6.1.tar.gz
>>    gmp-5.0.1.tar.bz2
>>    bison-2.4.3.tar.gz
>>    gettext-0.17.tar.gz
>>    binutils-2.20.1.tar.bz2
>>
>> but these were [re]fetched over the network from their original
>> sources (my MIRROR does have local copies):
>>    db-4.2.52.tar.gz
>>    expat-2.0.1.tar.gz
>>    flex-2.5.35.tar.bz2
>>    perl-5.8.8.tar.gz
>>    quilt-0.48.tar.gz
>>    zlib-1.2.5.tar.bz2
>>    mpc-0.8.2.tar.gz
>>    pkg-config-0.25.tar.gz
>>    mpfr-3.0.0.tar.bz2
>>    elfutils-0.148.tar.bz2
>>    tcl8.5.9-src.tar.gz
>>    config_cvs.sv.gnu.org__20080123.tar.gz
>>    curl-7.21.2.tar.bz2
>>    linux-2.6.36.tar.bz2
>>    git-1.7.3.2.tar.bz2
>>    sqlite-3.7.3.tar.gz
>>    openssl-0.9.8p.tar.gz
>>    git_github.com.wrpseudo.pseudo.git_c9792c7acdb1cac90549ff08db12a8bf0c53cdcf.tar.gz
>>
>> Not quite what I was hoping for.  I don't mind getting a
>> [temporary] copy of the files into ${BUILD}/downloads, but
>> I really need to find a way to avoid ever going to the internet
>> if the file is already available (which I plan to guarantee
>> for my customers)
>
> yes, It is unexpected. After digging more, I find meta/classes/mirrors.bbclass also provide some internet mirror, and bitbake may use them for fetching from internet. So could you remove those mirrors and have a quick try? This somehow does not explain why bitbake ignore PREMIRROR, so there must be wrong somewhere else. I am still looking. Will send out if there is more finding.

Any progress on this?  I just tried my original (file://)
setup with the latest master that has fetch2 enabled and
it still fails miserably.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

