Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC44F4C80579
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 02:14:44 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p367EhO2010629
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Apr 2011 00:14:43 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 6 Apr 2011 00:14:43 -0700
Message-ID: <4D9C12DF.3030803@windriver.com>
Date: Wed, 6 Apr 2011 15:14:39 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1301368727.git.kai.kang@windriver.com>
	<c5a61d7d0afc6e51f329ff3194f88000c27ad66d.1301368727.git.kai.kang@windriver.com>
	<4D9A052D.6050701@intel.com>
In-Reply-To: <4D9A052D.6050701@intel.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] nspr: add nspr to pass LSB library test
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
X-List-Received-Date: Wed, 06 Apr 2011 07:14:45 -0000
X-Groupsio-MsgNum: 5143
Content-Type: multipart/mixed; boundary="------------070606070304070006060908"

--------------070606070304070006060908
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年04月05日 01:51, Saul Wold wrote:
> On 03/28/2011 08:32 PM, Kang Kai wrote:
>> From: Kang Kai<kai.kang@windriver.com>
>>
>> LSB library test will check libnspr4.so which nspr provides.
>> Import from OE, rev 6fe7cef27069415f2eba36bc640cf59013d4979b
>> Update to 4.8.7, drop 99_configure.dpatch, and adjust files for nspr.
>>
>> Signed-off-by: Kang Kai<kai.kang@windriver.com>
>> ---
>> .../mozilla/nspr-4.8.7/30_config_64bits.dpatch | 45 ++++
>> .../mozilla/nspr-4.8.7/30_pkgconfig.dpatch | 37 +++
>> .../mozilla/nspr-4.8.7/81_sonames.dpatch | 233 ++++++++++++++++++++
>> .../mozilla/nspr-4.8.7/unbreak-build.diff | 50 +++++
>> .../recipes-extended/mozilla/nspr-tools-native.inc | 29 +++
>> .../mozilla/nspr-tools-native_4.8.7.bb | 16 ++
>> meta/recipes-extended/mozilla/nspr.inc | 44 ++++
>> meta/recipes-extended/mozilla/nspr_4.8.7.bb | 17 ++
>
>
Hi Saul,

>
> I noticed a problem with the LICENSE field, See further comments below
> This issue is also in the nss recipe.
I will correct it and add exact LICENSE versions.
The license file is just a paragraph explanation of licenses, not the 
LICENSE content itself. And has been insert every file's head. So there 
is no more license files.

Regards,
Kai

>
>
>>
>> diff --git a/meta/recipes-extended/mozilla/nspr-tools-native.inc 
>> b/meta/recipes-extended/mozilla/nspr-tools-native.inc
>> new file mode 100644
>> index 0000000..3575cc1
>> --- /dev/null
>> +++ b/meta/recipes-extended/mozilla/nspr-tools-native.inc
>> @@ -0,0 +1,29 @@
>> +SUMMARY = "Netscape Portable Runtime"
>> +
>> +DESCRIPTION = "\
>> +NSPR provides platform independence for non-GUI operating system \
>> +facilities. These facilities include threads, thread synchronization, \
>> +normal file and network I/O, interval timing and calendar time, basic \
>> +memory management (malloc and free) and shared library linking."
>> +
>> +HOMEPAGE = "https://www.mozilla.org/projects/nspr"
>> +LICENSE = "MPL1.1 | GPL | LGPL"
>> +
> Please be specific about which version of the the GPL and LGPL.
>
>
>> +S = "${WORKDIR}/nspr-${PV}/mozilla/nsprpub"
>> +
>> +inherit native autotools
>> +
>> +FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/nspr-${PV}"
>> +
>> +do_compile() {
>> + # Build 'now' and 'nsinstall' only.
>> + oe_runmake -C config now nsinstall
>> +}
>> +
>> +NATIVE_INSTALL_WORKS = "1"
>> +
>> +do_install() {
>> + install -d ${D}${bindir}/nspr-${PV}
>> + install -m 0755 config/now ${D}${bindir}/nspr-${PV}
>> + install -m 0755 config/nsinstall ${D}${bindir}/nspr-${PV}
>> +}
>> diff --git a/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb 
>> b/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
>> new file mode 100644
>> index 0000000..0cfadcb
>> --- /dev/null
>> +++ b/meta/recipes-extended/mozilla/nspr-tools-native_4.8.7.bb
>> @@ -0,0 +1,16 @@
>> +require nspr-tools-native.inc
>> +
>> +PR = "r0"
>> +
>> +LIC_FILES_CHKSUM = 
>> "file://${S}/pkg/solaris/common_files/copyright;md5=555c634e9953bed3492dd5e6d90cd973"
>> +
> You list 3 LICENSES in the .inc file but only 1 copyright file, are 
> there other files?
>
>> +SRC_URI = "\
>> + 
>> http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/nspr-${PV}.tar.gz;name=archive 
>> \
>> + file://30_config_64bits.dpatch;apply=yes \
>> + file://30_pkgconfig.dpatch;apply=yes \
>> + file://81_sonames.dpatch;apply=yes \
>> + file://unbreak-build.diff \
>> + "
>> +
>> +SRC_URI[archive.md5sum] = "97e30989a56ab813453b71261849c200"
>> +SRC_URI[archive.sha256sum] = 
>> "eb9459c31d43d1000fb1304f1e0cedab0bdac3c54c71988259c1ac10c1fe16a3"
>> diff --git a/meta/recipes-extended/mozilla/nspr.inc 
>> b/meta/recipes-extended/mozilla/nspr.inc
>> new file mode 100644
>> index 0000000..e6e6f36
>> --- /dev/null
>> +++ b/meta/recipes-extended/mozilla/nspr.inc
>> @@ -0,0 +1,44 @@
>> +SUMMARY = "Netscape Portable Runtime"
>> +
>> +DESCRIPTION = "\
>> +NSPR provides platform independence for non-GUI operating system \
>> +facilities. These facilities include threads, thread synchronization, \
>> +normal file and network I/O, interval timing and calendar time, basic \
>> +memory management (malloc and free) and shared library linking."
>> +
>> +HOMEPAGE = "https://www.mozilla.org/projects/nspr"
>> +LICENSE = "MPL1.1 | GPL | LGPL"
>
> Please be specific about which version of GPL and LGPL
>> +
>> +PR = "r0"
>> +
>> +DEPENDS = "nspr-tools-native"
>> +
>> +S = "${WORKDIR}/${P}/mozilla/nsprpub"
>> +
>> +inherit autotools
>> +
>> +EXTRA_OECONF = "\
>> + --enable-ipv6 \
>> + --with-mozilla \
>> + --includedir=${includedir}/mozilla/nspr \
>> + "
>> +
>> +TARGET_CC_ARCH += "${LDFLAGS}"
>> +
>> +do_compile_prepend() {
>> + cp ${STAGING_BINDIR_NATIVE}/${P}/now config/now
>> + touch config/now
>> +
>> + cp ${STAGING_BINDIR_NATIVE}/${P}/nsinstall config/nsinstall
>> + touch config/nsinstall
>> +}
>> +
>> +do_install_prepend() {
>> + cp ${STAGING_BINDIR_NATIVE}/${P}/now config/now
>> + touch config/now
>> +
>> + cp ${STAGING_BINDIR_NATIVE}/${P}/nsinstall config/nsinstall
>> + touch config/nsinstall
>> +}
>> +
>> +LEAD_SONAME = "libnspr4.so"
>> diff --git a/meta/recipes-extended/mozilla/nspr_4.8.7.bb 
>> b/meta/recipes-extended/mozilla/nspr_4.8.7.bb
>> new file mode 100644
>> index 0000000..7fb005f
>> --- /dev/null
>> +++ b/meta/recipes-extended/mozilla/nspr_4.8.7.bb
>> @@ -0,0 +1,17 @@
>> +require nspr.inc
>> +
>> +LIC_FILES_CHKSUM = 
>> "file://${S}/pkg/solaris/common_files/copyright;md5=555c634e9953bed3492dd5e6d90cd973"
>> +
>> +SRC_URI = "\
>> + 
>> http://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v${PV}/src/nspr-${PV}.tar.gz;name=archive 
>> \
>> + file://30_config_64bits.dpatch;apply=yes \
>> + file://30_pkgconfig.dpatch;apply=yes \
>> + file://81_sonames.dpatch;apply=yes \
>> + file://unbreak-build.diff \
>> + "
>> +
>> +SRC_URI[archive.md5sum] = "7c6e75a0867ce2b9ec62e399a908b5ac"
>> +SRC_URI[archive.sha256sum] = 
>> "58782b11423359f2a247f0217aab6fe041f32984aac1f411da6d43bd34cfd0db"
>> +
>> +FILES_${PN} = "${libdir}/lib*"
>> +FILES_${PN}-dev += "${bindir}/nspr-config"
>


--------------070606070304070006060908
Content-Type: text/plain; name="copyright"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="copyright"

Q29weXJpZ2h0IDIwMDUgU3VuIE1pY3Jvc3lzdGVtcywgSW5jLiAgQWxsIHJpZ2h0cyByZXNlcnZl
ZC4KVXNlIGlzIHN1YmplY3QgdG8gbGljZW5zZSB0ZXJtcy4KCioqKioqIEJFR0lOIExJQ0VOU0Ug
QkxPQ0sgKioqKioKVmVyc2lvbjogTVBMIDEuMS9HUEwgMi4wL0xHUEwgMi4xCgpUaGUgY29udGVu
dHMgb2YgdGhpcyBwYWNrYWdlIGFyZSBzdWJqZWN0IHRvIHRoZSBNb3ppbGxhIFB1YmxpYyBMaWNl
bnNlIFZlcnNpb24KMS4xICh0aGUgIkxpY2Vuc2UiKTsgeW91IG1heSBub3QgdXNlIHRoaXMgcGFj
a2FnZSBleGNlcHQgaW4gY29tcGxpYW5jZSB3aXRoCnRoZSBMaWNlbnNlLiBZb3UgbWF5IG9idGFp
biBhIGNvcHkgb2YgdGhlIExpY2Vuc2UgYXQKaHR0cDovL3d3dy5tb3ppbGxhLm9yZy9NUEwvCgpT
b2Z0d2FyZSBkaXN0cmlidXRlZCB1bmRlciB0aGUgTGljZW5zZSBpcyBkaXN0cmlidXRlZCBvbiBh
biAiQVMgSVMiIGJhc2lzLApXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBlaXRoZXIgZXhw
cmVzcyBvciBpbXBsaWVkLiBTZWUgdGhlIExpY2Vuc2UKZm9yIHRoZSBzcGVjaWZpYyBsYW5ndWFn
ZSBnb3Zlcm5pbmcgcmlnaHRzIGFuZCBsaW1pdGF0aW9ucyB1bmRlciB0aGUKTGljZW5zZS4KClRo
ZSBPcmlnaW5hbCBDb2RlIGlzIHRoZSBOZXRzY2FwZSBQb3J0YWJsZSBSdW50aW1lIChOU1BSKS4K
ClRoZSBJbml0aWFsIERldmVsb3BlciBvZiB0aGUgT3JpZ2luYWwgQ29kZSBpcwpOZXRzY2FwZSBD
b21tdW5pY2F0aW9ucyBDb3Jwb3JhdGlvbi4KUG9ydGlvbnMgY3JlYXRlZCBieSB0aGUgSW5pdGlh
bCBEZXZlbG9wZXIgYXJlIENvcHlyaWdodCAoQykgMTk5OC0yMDAwCnRoZSBJbml0aWFsIERldmVs
b3Blci4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KCkNvbnRyaWJ1dG9yKHMpOgoKQWx0ZXJuYXRpdmVs
eSwgdGhlIGNvbnRlbnRzIG9mIHRoaXMgZmlsZSBtYXkgYmUgdXNlZCB1bmRlciB0aGUgdGVybXMg
b2YKZWl0aGVyIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBWZXJzaW9uIDIgb3IgbGF0
ZXIgKHRoZSAiR1BMIiksIG9yCnRoZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljIExpY2Vuc2Ug
VmVyc2lvbiAyLjEgb3IgbGF0ZXIgKHRoZSAiTEdQTCIpLAppbiB3aGljaCBjYXNlIHRoZSBwcm92
aXNpb25zIG9mIHRoZSBHUEwgb3IgdGhlIExHUEwgYXJlIGFwcGxpY2FibGUgaW5zdGVhZApvZiB0
aG9zZSBhYm92ZS4gSWYgeW91IHdpc2ggdG8gYWxsb3cgdXNlIG9mIHlvdXIgdmVyc2lvbiBvZiB0
aGlzIGZpbGUgb25seQp1bmRlciB0aGUgdGVybXMgb2YgZWl0aGVyIHRoZSBHUEwgb3IgdGhlIExH
UEwsIGFuZCBub3QgdG8gYWxsb3cgb3RoZXJzIHRvCnVzZSB5b3VyIHZlcnNpb24gb2YgdGhpcyBm
aWxlIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgTVBMLCBpbmRpY2F0ZSB5b3VyCmRlY2lzaW9uIGJ5
IGRlbGV0aW5nIHRoZSBwcm92aXNpb25zIGFib3ZlIGFuZCByZXBsYWNlIHRoZW0gd2l0aCB0aGUg
bm90aWNlCmFuZCBvdGhlciBwcm92aXNpb25zIHJlcXVpcmVkIGJ5IHRoZSBHUEwgb3IgdGhlIExH
UEwuIElmIHlvdSBkbyBub3QgZGVsZXRlCnRoZSBwcm92aXNpb25zIGFib3ZlLCBhIHJlY2lwaWVu
dCBtYXkgdXNlIHlvdXIgdmVyc2lvbiBvZiB0aGlzIGZpbGUgdW5kZXIKdGhlIHRlcm1zIG9mIGFu
eSBvbmUgb2YgdGhlIE1QTCwgdGhlIEdQTCBvciB0aGUgTEdQTC4KCioqKioqIEVORCBMSUNFTlNF
IEJMT0NLICoqKioqCg==

--------------070606070304070006060908--
