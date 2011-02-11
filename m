Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D5034C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 10:34:50 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BGYmw8005645;
	Fri, 11 Feb 2011 08:34:48 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 08:34:48 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 08:34:48 -0800
Message-ID: <4D556527.4090200@windriver.com>
Date: Fri, 11 Feb 2011 10:34:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1297438842.git.mark.hatle@windriver.com>
	<58483E57-FA87-4779-8E6A-07B3BA8A2675@dominion.thruhere.net>
In-Reply-To: <58483E57-FA87-4779-8E6A-07B3BA8A2675@dominion.thruhere.net>
X-OriginalArrivalTime: 11 Feb 2011 16:34:48.0253 (UTC)
	FILETIME=[991D1ED0:01CBCA09]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Revised the debug info patches...
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
X-List-Received-Date: Fri, 11 Feb 2011 16:34:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/11/11 10:15 AM, Koen Kooi wrote:
> 
> Op 11 feb 2011, om 16:44 heeft Mark Hatle het volgende geschreven:
> 
>> After talking with Richard a bit, I've revised the configuration of the
>> debug info, patch 2 of 4.  1, 3 and 4 remain unchanged.
>>
>> The primary difference is to change the naming from "debian style", and
>> "fedora style" to a more accurate representation based on the GDB
>> documentation and usage I recently found.  In addition to the simple
>> name changing, the source code copying is now defined for both styles
>> and simply places the code in /usr/src/debug.
> 
> Is there a bbclass planned to populate /usr/src(/debug)? It would help people wanting to do external rebuilds of our (patched) sources.

The two halves of the splitfile function (splitfile and splitfile2) generate the
/usr/src/debug.

In the splitfile, before the files are actually split, a component called
"debugedit" (a standard part of rpm) is run.

os.system("%s'%s' -b '%s' -d '%s' -i -l '%s' '%s'" % (pathprefix, debugedit,
workdir, debugsrcdir, sourcefile, file))

debugedit -b ${WORKDIR} -d '/usr/src/debug' -i -l '${WORKDIR}/debugsources.list'
'<file>'

The debugedit program does two things.  The first is it scans the <file> looking
for dwarf source references.  Upon finding those references it captures the
original file name (places it into the ${WORKDIR}/debugsources.list), and then
replaces the ${WORKDIR} part of the file name with the /usr/src/debug path.

Later after everything is processed and the debugsources.list contains a full
list of referenced sources the following script is executed:

processdebugsrc =  "LC_ALL=C ; sort -z -u '%s' | egrep -v -z
'(<internal>|<built-in>)$' | "
processdebugsrc += "(cd '%s' ; cpio -pd0mL '%s%s' 2>/dev/null)"

os.system(processdebugsrc % (sourcefile, workdir, dvar, debugsrcdir))

In otherwords, we sort the list (null separated), and remove references to gcc
internal and builtin functions.  The result of the list is passed to cpio which
performs a copy of all of the referenced files to the dvar/usr/src/debug directory.

----

So that's how it works, and what it does..  As far as a bbclass, it's part of
the standard packaging BBCLASS, I would have thought this could be used, even by
external people given the right inputs to package/repackage external files.
There is nothing Poky specific in this code -- other then it expects the
binaries coming in to not be stripped.  (If they are, a warning is issues.)

--Mark

> regards,
> 
> Koen


