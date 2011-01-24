Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 528654C80B5F
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:28:25 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2011 09:28:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,370,1291622400"; 
	d="diff'?scan'208";a="700027011"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 24 Jan 2011 09:28:22 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 25 Jan 2011 01:28:21 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 25 Jan 2011 01:28:20 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Richard Purdie' <richard.purdie@linuxfoundation.org>
Date: Tue, 25 Jan 2011 01:28:19 +0800
Thread-Topic: [poky] [RFC: enhance toolchain bootstrap process: v3: 0/7]
	enhance the toolchain bootstrap process
Thread-Index: Acu74Jtp5CJGJGV+QOWGbSVHJbSGFAABeAOw
Message-ID: <1865303E0DED764181A9D882DEF65FB685DF60F3EC@shsmsx502.ccr.corp.intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<1295885045.14388.45539.camel@rex>
In-Reply-To: <1295885045.14388.45539.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 0/7] enhance the toolchain bootstrap process
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
X-List-Received-Date: Mon, 24 Jan 2011 17:28:25 -0000
X-Groupsio-MsgNum: 2780
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_1865303E0DED764181A9D882DEF65FB685DF60F3ECshsmsx502ccrc_"

--_002_1865303E0DED764181A9D882DEF65FB685DF60F3ECshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> Hi Dexuan,
>=20
> On Tue, 2011-01-18 at 21:57 +0800, Dexuan Cui wrote:
>> Hi Richard and all,
>>=20
>> The patch set enhances the toolchain bootstrap process by installing
>> a separate sysroot for each step of the process.=20
>> The purpose is to avoid file overwriting in the current global
>> sysroot, namely, to fix Bug 239:
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D239 =20
>>=20
>>=20
>> The basic idea is straightforward:
>> 1) For gcc-cross-initial and -intermediate, by changing
>> MULTIMACH_TARGET_SYS to install the files into new locations; 2) Fix
>> the build of eglibc-initial, eglibc by using the appropriate
>> compilers, libs, headers; 3) Also make proper changes for the
>> crosssdk/nativesdk version. =20
>>=20
>> I've split all the changes into small git commits and each commit
>> should be basically self-explanatory. :-)=20
>=20
> I've had a look through this and experimented a little with the code
> and=20
> I've some feedback:
Hi Richard, thanks very much for the review and feedback!
BTW: I was just about to send out my "RFC v5" patches and I saw the mail. :=
-)

During the past days, I've been busy with testing and fixing & updating my =
patches.
The v5 patches are at  http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/=
log/?h=3Ddcui/tcbp-v5 (actually it's the same as dcui/tcbp-test currently)
The attached v3-to-v5.diff shows the difference from v3 to v5:

1) fix several typos for  "_prepend_virtclass-nativesdk": previously I used=
 the wrong "_virtclass-nativesdk_prepend"!

2) in eglibc-initial.inc, now the line is=20
STAGING_BINDIR_TOOLCHAIN_prepend =3D "${STAGING_DIR_NATIVE}${bindir_native}=
/${BASEPKG_HOST_SYS}.gcc-cross-initial:"
Previously, I used HOST_SYS rather than BASEPKG_HOST_SYS.  Actually HOST_SY=
S is not ok because this breaks arm/ppc builds.

3) similarly,
	in eglibc.inc:=20
		STAGING_BINDIR_TOOLCHAIN_prepend: HOST_SYS --> BASEPKG_HOST_SYS
		CPPFLAGS_prepend: TARGET_SYS -> BASEPKG_TARGET_SYS
	in gcc-cross-intermediate.inc:
		GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT: TARGET_SYS --> BASEPKG_TARGET_=
SYS

4)  in eglibc-initial.inc:
	use a "for t in ..." loop to replace the previous 3 statements.

5) add the code for glibc and glibc-initial similarly.
6) bump PRs accordingly.

I'll send my current test results later.


>   sstate.bbclass: allow each step of toolchain bootstrap processes to
>   do populate_sysroot independently cross.bbclass: make
> MULTIMACH_TARGET_SYS adjustable for bindir, libdir, libexecdir=20
>=20
> These two are fine.
Thanks a lot for your previous great suggestion about MULTIMACH_TARGET_SYS.=
 :-)

>=20
>   gcc-cross-initial, gcc-crosssdk-initial: change
> CROSS_TARGET_SYS_DIR and insall into new locations=20
>=20
> This change is ok but its incomplete. Why? If I apply this change and
> try a build, things won't work as it needs bits from later commits. To
I split my changes into small commits for easy review. Sorry, I didn't try =
to ensure every commit should be buildable. :-)


> illustrate this and some other details, take a look at:
>=20
> http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/tt-boo=
tstrap&id=3D5512f876b103987b74722a7788a1ebe797852bbe
>=20
> Here I've updated glibc and eglibc to use the new locations so the
> change will allow a build to succeed in its own right. Notice that
> I've=20
> simplified the variables quite a bit too.
OK, I'll look at this branch carefully and see if anything in my v3-to-v5.d=
iff should be added into this branch.

> There is also a subsequent commit on the branch to enable this change
> for gcc-cross-intermediate.
>=20
>   eglibc-initial, eglibc-initial-nativesdk: install into individual
>   sysroots gcc-cross-intermediate, gcc-crosssdk-intermediate: change
>   CROSS_TARGET_SYS_DIR and insall into new locations cross.bbclass:
>   modify sysroot_stage_all to allow gcc-{cross,crossdk}-intermediate
> to populate the libgcc_s.so* files eglibc, eglibc-nativesdk: fix the
> build due to changes to eglibc-initial and gcc-cross-intermediate =20
>=20
> These other changes need separating out more cleanly. For example,
> adding a patch to gcc should be a separate commit, the update to use a
> new sysroot directory should probably be one commit so builds work
> before and after it.
OK, I'll think about how to organize the changes properly. Thanks for the s=
uggestions!

>=20
> I'm also wondering if there isn't a neater way to handle the target
> sysroot problem instead of the prefixes you're using. I'll send an
> update as and when I've experimented a little to determine if this is
> possible.
Thanks a lot for the help!


Thanks,
-- Dexuan=

--_002_1865303E0DED764181A9D882DEF65FB685DF60F3ECshsmsx502ccrc_
Content-Type: application/octet-stream; name="v3-to-v5.diff"
Content-Description: v3-to-v5.diff
Content-Disposition: attachment; filename="v3-to-v5.diff"; size=9913;
	creation-date="Tue, 25 Jan 2011 01:00:47 GMT";
	modification-date="Tue, 25 Jan 2011 01:00:47 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtTnJ1IHBjMy9tZXRhL3JlY2lwZXMtY29yZS9lZ2xpYmMvZWdsaWJjLWluaXRpYWwuaW5j
IHBjNS9tZXRhL3JlY2lwZXMtY29yZS9lZ2xpYmMvZWdsaWJjLWluaXRpYWwuaW5jDQotLS0gcGMz
L21ldGEvcmVjaXBlcy1jb3JlL2VnbGliYy9lZ2xpYmMtaW5pdGlhbC5pbmMJMjAxMS0wMS0yNSAw
MDo1NDo1OS4wMDAwMDAwMDAgKzA4MDANCisrKyBwYzUvbWV0YS9yZWNpcGVzLWNvcmUvZWdsaWJj
L2VnbGliYy1pbml0aWFsLmluYwkyMDExLTAxLTI1IDAwOjU1OjA1LjAwMDAwMDAwMCArMDgwMA0K
QEAgLTEsNyArMSw3IEBADQogcmVxdWlyZSBlZ2xpYmMtY29tbW9uLmluYw0KIA0KLVNUQUdJTkdf
QklORElSX1RPT0xDSEFJTl9wcmVwZW5kID0gIiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7YmluZGly
X25hdGl2ZX0vJHtIT1NUX1NZU30uZ2NjLWNyb3NzLWluaXRpYWw6Ig0KLVNUQUdJTkdfQklORElS
X1RPT0xDSEFJTl92aXJ0Y2xhc3MtbmF0aXZlc2RrX3ByZXBlbmQgPSAiJHtTVEFHSU5HX0RJUl9O
QVRJVkV9JHtiaW5kaXJfbmF0aXZlfS8ke0hPU1RfU1lTfS5nY2MtY3Jvc3NzZGstaW5pdGlhbDoi
DQorU1RBR0lOR19CSU5ESVJfVE9PTENIQUlOX3ByZXBlbmQgPSAiJHtTVEFHSU5HX0RJUl9OQVRJ
VkV9JHtiaW5kaXJfbmF0aXZlfS8ke0JBU0VQS0dfSE9TVF9TWVN9LmdjYy1jcm9zcy1pbml0aWFs
OiINCitTVEFHSU5HX0JJTkRJUl9UT09MQ0hBSU5fcHJlcGVuZF92aXJ0Y2xhc3MtbmF0aXZlc2Rr
ID0gIiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtIT1NUX1NZU30uZ2Nj
LWNyb3Nzc2RrLWluaXRpYWw6Ig0KIA0KIERFUEVORFMgPSAibGludXgtbGliYy1oZWFkZXJzIHZp
cnR1YWwvJHtUQVJHRVRfUFJFRklYfWdjYy1pbml0aWFsIg0KIFBST1ZJREVTID0gInZpcnR1YWwv
JHtUQVJHRVRfUFJFRklYfWxpYmMtaW5pdGlhbCINCkBAIC00Nyw5ICs0Nyw5IEBADQogICAgICAg
ICAgICAgICAgLW8gJHtEfSR7bGliZGlyfS9saWJjLnNvDQogDQogICAgICAgICMgYWRkIGxpbmtz
IHRvIGxpbnV4LWxpYmMtaGVhZGVyczogZ2NjLXtjcm9zcyxjcm9zc2RrfS1pbnRlcm1lZGlhdGUg
bmVlZCB0aGlzLg0KLSAgICAgICBsbiAtcyAke1NUQUdJTkdfRElSX1RBUkdFVH0ke2luY2x1ZGVk
aXJ9L2xpbnV4ICAke0R9JHtpbmNsdWRlZGlyfS8NCi0gICAgICAgbG4gLXMgJHtTVEFHSU5HX0RJ
Ul9UQVJHRVR9JHtpbmNsdWRlZGlyfS9hc20gICR7RH0ke2luY2x1ZGVkaXJ9Lw0KLSAgICAgICBs
biAtcyAke1NUQUdJTkdfRElSX1RBUkdFVH0ke2luY2x1ZGVkaXJ9L2FzbS1nZW5lcmljICAke0R9
JHtpbmNsdWRlZGlyfS8NCisgICAgICAgZm9yIHQgaW4gbGludXggYXNtIGFzbS1nZW5lcmljOyBk
bw0KKyAgICAgICAgICAgICAgIGxuIC1zICR7U1RBR0lOR19ESVJfVEFSR0VUfSR7aW5jbHVkZWRp
cn0vJHQgICR7RH0ke2luY2x1ZGVkaXJ9Lw0KKyAgICAgICBkb25lDQogfQ0KIA0KIGRvX3NpdGVj
b25maWcgKCkgew0KZGlmZiAtTnJ1IHBjMy9tZXRhL3JlY2lwZXMtY29yZS9lZ2xpYmMvZWdsaWJj
LmluYyBwYzUvbWV0YS9yZWNpcGVzLWNvcmUvZWdsaWJjL2VnbGliYy5pbmMNCi0tLSBwYzMvbWV0
YS9yZWNpcGVzLWNvcmUvZWdsaWJjL2VnbGliYy5pbmMJMjAxMS0wMS0yNSAwMDo1NDo1OS4wMDAw
MDAwMDAgKzA4MDANCisrKyBwYzUvbWV0YS9yZWNpcGVzLWNvcmUvZWdsaWJjL2VnbGliYy5pbmMJ
MjAxMS0wMS0yNSAwMDo1NTowNS4wMDAwMDAwMDAgKzA4MDANCkBAIC0xLDEzICsxLDEzIEBADQog
cmVxdWlyZSBlZ2xpYmMtY29tbW9uLmluYw0KIA0KLVNUQUdJTkdfQklORElSX1RPT0xDSEFJTl9w
cmVwZW5kID0gIiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtIT1NUX1NZ
U30uZ2NjLWNyb3NzLWludGVybWVkaWF0ZToiDQotU1RBR0lOR19CSU5ESVJfVE9PTENIQUlOX3Zp
cnRjbGFzcy1uYXRpdmVzZGtfcHJlcGVuZCA9ICIke1NUQUdJTkdfRElSX05BVElWRX0ke2JpbmRp
cl9uYXRpdmV9LyR7SE9TVF9TWVN9LmdjYy1jcm9zc3Nkay1pbnRlcm1lZGlhdGU6Ig0KK1NUQUdJ
TkdfQklORElSX1RPT0xDSEFJTl9wcmVwZW5kID0gIiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7Ymlu
ZGlyX25hdGl2ZX0vJHtCQVNFUEtHX0hPU1RfU1lTfS5nY2MtY3Jvc3MtaW50ZXJtZWRpYXRlOiIN
CitTVEFHSU5HX0JJTkRJUl9UT09MQ0hBSU5fcHJlcGVuZF92aXJ0Y2xhc3MtbmF0aXZlc2RrID0g
IiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtIT1NUX1NZU30uZ2NjLWNy
b3Nzc2RrLWludGVybWVkaWF0ZToiDQogDQotQ1BQRkxBR1NfcHJlcGVuZCA9ICItSSR7U1RBR0lO
R19ESVJfVEFSR0VUfS9lZ2xpYmMtaW5pdGlhbC8ke1RBUkdFVF9TWVN9JHtpbmNsdWRlZGlyX25h
dGl2ZX0gIg0KLUNQUEZMQUdTX3ZpcnRjbGFzcy1uYXRpdmVzZGtfcHJlcGVuZCA9ICItSSR7U1RB
R0lOR19ESVJfVEFSR0VUfS9lZ2xpYmMtaW5pdGlhbC1uYXRpdmVzZGsvJHtTREtfQVJDSH0tbmF0
aXZlc2RrJHtTREtfVkVORE9SfS0ke1NES19PU30ke2Jhc2VfcHJlZml4fSR7aW5jbHVkZWRpcl9u
YXRpdmV9ICINCitDUFBGTEFHU19wcmVwZW5kID0gIi1JJHtTVEFHSU5HX0RJUl9UQVJHRVR9L2Vn
bGliYy1pbml0aWFsLyR7QkFTRVBLR19UQVJHRVRfU1lTfSR7aW5jbHVkZWRpcl9uYXRpdmV9ICIN
CitDUFBGTEFHU19wcmVwZW5kX3ZpcnRjbGFzcy1uYXRpdmVzZGsgPSAiLUkke1NUQUdJTkdfRElS
X1RBUkdFVH0vZWdsaWJjLWluaXRpYWwtbmF0aXZlc2RrLyR7U0RLX0FSQ0h9LW5hdGl2ZXNkayR7
U0RLX1ZFTkRPUn0tJHtTREtfT1N9JHtiYXNlX3ByZWZpeH0ke2luY2x1ZGVkaXJfbmF0aXZlfSAi
DQogDQogTERGTEFHU19wcmVwZW5kPSAiLUwke1NUQUdJTkdfRElSX1RBUkdFVH0ke2Jhc2VfbGli
ZGlyfS5nY2MtY3Jvc3MtaW50ZXJtZWRpYXRlICINCi1MREZMQUdTX3ZpcnRjbGFzcy1uYXRpdmVz
ZGtfcHJlcGVuZD0gIi1MJHtTVEFHSU5HX0RJUl9UQVJHRVR9JHtiYXNlX2xpYmRpcn0uZ2NjLWNy
b3Nzc2RrLWludGVybWVkaWF0ZSAiDQorTERGTEFHU19wcmVwZW5kX3ZpcnRjbGFzcy1uYXRpdmVz
ZGs9ICItTCR7U1RBR0lOR19ESVJfVEFSR0VUfSR7YmFzZV9saWJkaXJ9LmdjYy1jcm9zc3Nkay1p
bnRlcm1lZGlhdGUgIg0KIA0KICMgbnB0bCBuZWVkcyB1bndpbmQgc3VwcG9ydCBpbiBnY2MsIHdo
aWNoIGNhbid0IGJlIGJ1aWx0IHdpdGhvdXQgZ2xpYmMuDQogREVQRU5EUyA9ICJ2aXJ0dWFsLyR7
VEFSR0VUX1BSRUZJWH1nY2MtaW50ZXJtZWRpYXRlIGxpbnV4LWxpYmMtaGVhZGVycyINCmRpZmYg
LU5ydSBwYzMvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmMtaW5pdGlhbC5pbmMgcGM1L21l
dGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjLWluaXRpYWwuaW5jDQotLS0gcGMzL21ldGEvcmVj
aXBlcy1jb3JlL2dsaWJjL2dsaWJjLWluaXRpYWwuaW5jCTIwMTEtMDEtMjQgMDU6MDQ6MzcuMDAw
MDAwMDAwICswODAwDQorKysgcGM1L21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjLWluaXRp
YWwuaW5jCTIwMTEtMDEtMjUgMDA6NTU6MDUuMDAwMDAwMDAwICswODAwDQpAQCAtMyw2ICszLDkg
QEANCiBQUk9WSURFUyA9ICJ2aXJ0dWFsLyR7VEFSR0VUX1BSRUZJWH1saWJjLWluaXRpYWwiDQog
RklMRVNQQVRIID0gIiR7QGJhc2Vfc2V0X2ZpbGVzcGF0aChbICcke0ZJTEVfRElSTkFNRX0vZ2xp
YmMtJHtQVn0nLCAnJHtGSUxFX0RJUk5BTUV9L2dsaWJjLTIuNCcsICcke0ZJTEVfRElSTkFNRX0v
Z2xpYmMnLCAnJHtGSUxFX0RJUk5BTUV9L2ZpbGVzJywgJyR7RklMRV9ESVJOQU1FfScgXSwgZCl9
Ig0KIA0KK1NUQUdJTkdfQklORElSX1RPT0xDSEFJTl9wcmVwZW5kID0gIiR7U1RBR0lOR19ESVJf
TkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtCQVNFUEtHX0hPU1RfU1lTfS5nY2MtY3Jvc3MtaW5p
dGlhbDoiDQorU1RBR0lOR19CSU5ESVJfVE9PTENIQUlOX3ByZXBlbmRfdmlydGNsYXNzLW5hdGl2
ZXNkayA9ICIke1NUQUdJTkdfRElSX05BVElWRX0ke2JpbmRpcl9uYXRpdmV9LyR7SE9TVF9TWVN9
LmdjYy1jcm9zc3Nkay1pbml0aWFsOiINCisNCiBQQUNLQUdFUyA9ICIiDQogUEFDS0FHRVNfRFlO
QU1JQyA9ICIiDQogDQpAQCAtNTAsOCArNTMsMTUgQEANCiAJaW5zdGFsbCAtbSA2NDQgY3N1L2Ny
dFsxaW5dLm8gJHtEfSR7bGliZGlyfQ0KIAkke0NDfSAtbm9zdGRsaWIgLW5vc3RhcnRmaWxlcyAt
c2hhcmVkIC14IGMgL2Rldi9udWxsIFwNCiAJCS1vICR7RH0ke2xpYmRpcn0vbGliYy5zbw0KKw0K
KwkjIGFkZCBsaW5rcyB0byBsaW51eC1saWJjLWhlYWRlcnM6IGdjYy17Y3Jvc3MsY3Jvc3Nka30t
aW50ZXJtZWRpYXRlIG5lZWQgdGhpcy4NCisJZm9yIHQgaW4gbGludXggYXNtIGFzbS1nZW5lcmlj
OyBkbw0KKwkJbG4gLXMgJHtTVEFHSU5HX0RJUl9UQVJHRVR9JHtpbmNsdWRlZGlyfS8kdCAgJHtE
fSR7aW5jbHVkZWRpcn0vDQorCWRvbmUNCiB9DQogDQogZG9fc2l0ZWNvbmZpZyAoKSB7DQogCToN
CiB9DQorDQorZG9fcG9wdWxhdGVfc3lzcm9vdFtzc3RhdGUtb3V0cHV0ZGlyc10gPSAiJHtTVEFH
SU5HX0RJUl9UQVJHRVR9LyR7UE59Ig0KZGlmZiAtTnJ1IHBjMy9tZXRhL3JlY2lwZXMtY29yZS9n
bGliYy9nbGliYy5pbmMgcGM1L21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjLmluYw0KLS0t
IHBjMy9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9nbGliYy5pbmMJMjAxMS0wMS0yNSAwMDo1NDo1
OS4wMDAwMDAwMDAgKzA4MDANCisrKyBwYzUvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmMu
aW5jCTIwMTEtMDEtMjUgMDA6NTU6MDUuMDAwMDAwMDAwICswODAwDQpAQCAtOCw2ICs4LDE2IEBA
DQogICAgICAgICAgICAgICAgICAgICBmaWxlOi8vZWxmL2NhY2hlLmM7YmVnaW5saW5lPTE7ZW5k
bGluZT0xNzttZDU9OTI2YWFjMjU0OTdiMWRlN2Q2MzBiNDc0OTAwNWQyMDggXA0KICAgICAgICAg
ICAgICAgICAgICAgZmlsZTovL0NPUFlJTkcuTElCO21kNT1iYmI0NjEyMTFhMzNiMTM0ZDQyZWQ1
ZWU4MDJiMzdmZiBcDQogICAgICAgICAgICAgICAgICAgICBmaWxlOi8vYml0cy90eXBlcy5oO2Jl
Z2lubGluZT0xO2VuZGxpbmU9MTg7bWQ1PTI2NzkzOGU3YzA1MzhlNzZmNzM0NTUxZWM2ZWE5MDhk
Ig0KKw0KK1NUQUdJTkdfQklORElSX1RPT0xDSEFJTl9wcmVwZW5kID0gIiR7U1RBR0lOR19ESVJf
TkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtCQVNFUEtHX0hPU1RfU1lTfS5nY2MtY3Jvc3MtaW50
ZXJtZWRpYXRlOiINCitTVEFHSU5HX0JJTkRJUl9UT09MQ0hBSU5fcHJlcGVuZF92aXJ0Y2xhc3Mt
bmF0aXZlc2RrID0gIiR7U1RBR0lOR19ESVJfTkFUSVZFfSR7YmluZGlyX25hdGl2ZX0vJHtIT1NU
X1NZU30uZ2NjLWNyb3Nzc2RrLWludGVybWVkaWF0ZToiDQorDQorQ1BQRkxBR1NfcHJlcGVuZCA9
ICItSSR7U1RBR0lOR19ESVJfVEFSR0VUfS9nbGliYy1pbml0aWFsLyR7QkFTRVBLR19UQVJHRVRf
U1lTfSR7aW5jbHVkZWRpcl9uYXRpdmV9ICINCitDUFBGTEFHU19wcmVwZW5kX3ZpcnRjbGFzcy1u
YXRpdmVzZGsgPSAiLUkke1NUQUdJTkdfRElSX1RBUkdFVH0vZ2xpYmMtaW5pdGlhbC1uYXRpdmVz
ZGsvJHtTREtfQVJDSH0tbmF0aXZlc2RrJHtTREtfVkVORE9SfS0ke1NES19PU30ke2Jhc2VfcHJl
Zml4fSR7aW5jbHVkZWRpcl9uYXRpdmV9ICINCisNCitMREZMQUdTX3ByZXBlbmQ9ICItTCR7U1RB
R0lOR19ESVJfVEFSR0VUfSR7YmFzZV9saWJkaXJ9LmdjYy1jcm9zcy1pbnRlcm1lZGlhdGUgIg0K
K0xERkxBR1NfcHJlcGVuZF92aXJ0Y2xhc3MtbmF0aXZlc2RrPSAiLUwke1NUQUdJTkdfRElSX1RB
UkdFVH0ke2Jhc2VfbGliZGlyfS5nY2MtY3Jvc3NzZGstaW50ZXJtZWRpYXRlICINCisNCiAjIG5w
dGwgbmVlZHMgdW53aW5kIHN1cHBvcnQgaW4gZ2NjLCB3aGljaCBjYW4ndCBiZSBidWlsdCB3aXRo
b3V0IGdsaWJjLg0KIERFUEVORFMgPSAidmlydHVhbC8ke1RBUkdFVF9QUkVGSVh9Z2NjLWludGVy
bWVkaWF0ZSBsaW51eC1saWJjLWhlYWRlcnMiDQogUkRFUEVORFNfJHtQTn0tZGV2ID0gImxpbnV4
LWxpYmMtaGVhZGVycy1kZXYiDQpkaWZmIC1OcnUgcGMzL21ldGEvcmVjaXBlcy1jb3JlL2dsaWJj
L2dsaWJjXzIuMTAuMS5iYiBwYzUvbWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmNfMi4xMC4x
LmJiDQotLS0gcGMzL21ldGEvcmVjaXBlcy1jb3JlL2dsaWJjL2dsaWJjXzIuMTAuMS5iYgkyMDEx
LTAxLTI0IDA1OjA0OjM3LjAwMDAwMDAwMCArMDgwMA0KKysrIHBjNS9tZXRhL3JlY2lwZXMtY29y
ZS9nbGliYy9nbGliY18yLjEwLjEuYmIJMjAxMS0wMS0yNSAwMDo1NTowNS4wMDAwMDAwMDAgKzA4
MDANCkBAIC01LDcgKzUsNyBAQA0KIFBBQ0tBR0VTX0RZTkFNSUMgPSAibGliYzYqIg0KIFJQUk9W
SURFU18ke1BOfS1kZXYgPSAibGliYzYtZGV2IHZpcnR1YWwtbGliYy1kZXYiDQogDQotUFIgPSAi
cjYiDQorUFIgPSAicjgiDQogDQogIyB0aGUgLWlzeXN0ZW0gaW4gYml0YmFrZS5jb25mIHNjcmV3
cyB1cCBnbGliYyBkb19zdGFnZQ0KIEJVSUxEX0NQUEZMQUdTID0gIi1JJHtTVEFHSU5HX0lOQ0RJ
Ul9OQVRJVkV9Ig0KQEAgLTEyOCwxNCArMTI4LDEyIEBADQogCXNlZCAtaSBzOi92YXIvZGIvbnNj
ZDovdmFyL3J1bi9uc2NkOiAke1N9L25zY2QvbnNjZC5oDQogIyBvdmVycmlkZSB0aGlzIGZ1bmN0
aW9uIHRvIGF2b2lkIHRoZSBhdXRvY29uZi9hdXRvbWFrZS9hY2xvY2FsL2F1dG9oZWFkZXINCiAj
IGNhbGxzIGZvciBub3cNCi0jIGRvbid0IHBhc3MgQ1BQRkxBR1MgaW50byBjb25maWd1cmUsIHNp
bmNlIGl0IHVwc2V0cyB0aGUga2VybmVsLWhlYWRlcnMNCi0jIHZlcnNpb24gY2hlY2sgYW5kIGRv
ZXNuJ3QgcmVhbGx5IGhlbHAgd2l0aCBhbnl0aGluZw0KIAlpZiBbIC16ICJgd2hpY2ggcnBjZ2Vu
YCIgXTsgdGhlbg0KIAkJZWNobyAicnBjZ2VuIG5vdCBmb3VuZC4gIEluc3RhbGwgZ2xpYmMtZGV2
ZWwuIg0KIAkJZXhpdCAxDQogCWZpDQogCShjZCAke1N9ICYmIGdudS1jb25maWdpemUpIHx8IGRp
ZSAiZmFpbHVyZSBpbiBydW5uaW5nIGdudS1jb25maWdpemUiDQotCUNQUEZMQUdTPSIiIG9lX3J1
bmNvbmYNCisJb2VfcnVuY29uZg0KIH0NCiANCiBycGNzdmMgPSAiYm9vdHBhcmFtX3Byb3QueCBu
bG1fcHJvdC54IHJzdGF0LnggXA0KQEAgLTE0Myw4ICsxNDEsNiBAQA0KICAgICAgICAgICBydXNl
cnMueCBzcHJheS54IG5mc19wcm90LnggcnF1b3RhLngga2V5X3Byb3QueCINCiANCiBkb19jb21w
aWxlICgpIHsNCi0JIyAtV2wsLXJwYXRoLWxpbmsgPHN0YWdpbmc+L2xpYiBpbiBMREZMQUdTIGNh
biBjYXVzZSBicmVha2FnZSBpZiBhbm90aGVyIGdsaWJjIGlzIGluIHN0YWdpbmcNCi0JdW5zZXQg
TERGTEFHUw0KIAliYXNlX2RvX2NvbXBpbGUNCiAJKA0KIAkJY2QgJHtTfS9zdW5ycGMvcnBjc3Zj
DQpkaWZmIC1OcnUgcGMzL21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWluaXRp
YWxfNC41LjEuYmIgcGM1L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWluaXRp
YWxfNC41LjEuYmINCi0tLSBwYzMvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3Mt
aW5pdGlhbF80LjUuMS5iYgkyMDExLTAxLTI1IDAwOjU0OjU5LjAwMDAwMDAwMCArMDgwMA0KKysr
IHBjNS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zcy1pbml0aWFsXzQuNS4xLmJi
CTIwMTEtMDEtMjUgMDA6NTU6MDUuMDAwMDAwMDAwICswODAwDQpAQCAtMSw1ICsxLDUgQEANCiBy
ZXF1aXJlIGdjYy1jcm9zc18ke1BWfS5iYg0KIHJlcXVpcmUgZ2NjLWNyb3NzLWluaXRpYWwuaW5j
DQogDQotUFIgPSAicjIiDQorUFIgPSAicjEiDQogDQpkaWZmIC1OcnUgcGMzL21ldGEvcmVjaXBl
cy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWludGVybWVkaWF0ZS5pbmMgcGM1L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWludGVybWVkaWF0ZS5pbmMNCi0tLSBwYzMvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3MtaW50ZXJtZWRpYXRlLmluYwkyMDExLTAxLTI1
IDAwOjU0OjU5LjAwMDAwMDAwMCArMDgwMA0KKysrIHBjNS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMv
Z2NjL2djYy1jcm9zcy1pbnRlcm1lZGlhdGUuaW5jCTIwMTEtMDEtMjUgMDA6NTU6MDUuMDAwMDAw
MDAwICswODAwDQpAQCAtOCw3ICs4LDcgQEANCiBDUk9TU19UQVJHRVRfU1lTX0RJUl9hcHBlbmQg
PSAiLiR7UE59Ig0KIA0KIA0KLUdDQ19DUk9TU19JTlRFUk1FRElBVEVfV0lUSF9CVUlMRF9TWVNS
T09UID0gIiR7U1RBR0lOR19ESVJfVEFSR0VUfS9lZ2xpYmMtaW5pdGlhbC8ke1RBUkdFVF9TWVN9
Ig0KK0dDQ19DUk9TU19JTlRFUk1FRElBVEVfV0lUSF9CVUlMRF9TWVNST09UID0gIiR7U1RBR0lO
R19ESVJfVEFSR0VUfS9lZ2xpYmMtaW5pdGlhbC8ke0JBU0VQS0dfVEFSR0VUX1NZU30iDQogDQog
IyBUaGlzIGlzIGludGVuZGVkIHRvIGJlIGEgLXZlcnktIGJhc2ljIGNvbmZpZw0KICMgc3lzcm9v
dCBpcyBuZWVkZWQgaW4gY2FzZSB3ZSB1c2UgbGliYy1pbml0aWFsDQpkaWZmIC1OcnUgcGMzL21l
dGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWludGVybWVkaWF0ZV80LjUuMS5iYiBw
YzUvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3MtaW50ZXJtZWRpYXRlXzQuNS4x
LmJiDQotLS0gcGMzL21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3NzLWludGVybWVk
aWF0ZV80LjUuMS5iYgkyMDExLTAxLTI1IDAwOjU0OjU5LjAwMDAwMDAwMCArMDgwMA0KKysrIHBj
NS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zcy1pbnRlcm1lZGlhdGVfNC41LjEu
YmIJMjAxMS0wMS0yNSAwMDo1NTowNS4wMDAwMDAwMDAgKzA4MDANCkBAIC0xLDQgKzEsNCBAQA0K
IHJlcXVpcmUgZ2NjLWNyb3NzXyR7UFZ9LmJiDQogcmVxdWlyZSBnY2MtY3Jvc3MtaW50ZXJtZWRp
YXRlLmluYw0KLVBSID0gInIyIg0KK1BSID0gInIxIg0KIA0KZGlmZiAtTnJ1IHBjMy9tZXRhL3Jl
Y2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zc3Nkay1pbml0aWFsXzQuNS4xLmJiIHBjNS9tZXRh
L3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zc3Nkay1pbml0aWFsXzQuNS4xLmJiDQotLS0g
cGMzL21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3Nzc2RrLWluaXRpYWxfNC41LjEu
YmIJMjAxMS0wMS0yNSAwMDo1NDo1OS4wMDAwMDAwMDAgKzA4MDANCisrKyBwYzUvbWV0YS9yZWNp
cGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3NzZGstaW5pdGlhbF80LjUuMS5iYgkyMDExLTAxLTI1
IDAwOjU1OjA1LjAwMDAwMDAwMCArMDgwMA0KQEAgLTEsNCArMSw0IEBADQogcmVxdWlyZSBnY2Mt
Y3Jvc3MtaW5pdGlhbF8ke1BWfS5iYg0KIHJlcXVpcmUgZ2NjLWNyb3Nzc2RrLWluaXRpYWwuaW5j
DQogDQotUFIgPSAicjIiDQorUFIgPSAicjEiDQpkaWZmIC1OcnUgcGMzL21ldGEvcmVjaXBlcy1k
ZXZ0b29scy9nY2MvZ2NjLWNyb3Nzc2RrLWludGVybWVkaWF0ZV80LjUuMS5iYiBwYzUvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL2djYy9nY2MtY3Jvc3NzZGstaW50ZXJtZWRpYXRlXzQuNS4xLmJiDQot
LS0gcGMzL21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLWNyb3Nzc2RrLWludGVybWVkaWF0
ZV80LjUuMS5iYgkyMDExLTAxLTI1IDAwOjU0OjU5LjAwMDAwMDAwMCArMDgwMA0KKysrIHBjNS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1jcm9zc3Nkay1pbnRlcm1lZGlhdGVfNC41LjEu
YmIJMjAxMS0wMS0yNSAwMDo1NTowNS4wMDAwMDAwMDAgKzA4MDANCkBAIC0xLDQgKzEsNCBAQA0K
IHJlcXVpcmUgZ2NjLWNyb3NzLWludGVybWVkaWF0ZV8ke1BWfS5iYg0KIHJlcXVpcmUgZ2NjLWNy
b3Nzc2RrLWludGVybWVkaWF0ZS5pbmMNCiANCi1QUiA9ICJyMiINCitQUiA9ICJyMSINCg==

--_002_1865303E0DED764181A9D882DEF65FB685DF60F3ECshsmsx502ccrc_--
