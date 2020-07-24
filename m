Subject: Re: How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
To: poky@lists.yoctoproject.org
From: kar_947@hotmail.fr
X-Originating-Location: Treillieres, Pays de la Loire, FR (185.10.176.241)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 23:57:05 -0700
References: <20200723153148.fqszi7imsnv2uakn@qschulz>
In-Reply-To: <20200723153148.fqszi7imsnv2uakn@qschulz>
Message-ID: <30764.1595573825608866410@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QYcR2VNrQYYOCAs9WNGr"

--QYcR2VNrQYYOCAs9WNGr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin

On Thu, Jul 23, 2020 at 05:31 PM, Quentin Schulz wrote:

>=20
> You can just replace Yocto with Buildroot (which would have the same
> issue with package management AFAICT). Or replace the Yocto on your
> board currently with your own. Ask your vendor about this, they'll
> probably provide layers and if lucky instructions.

I think it's the better way to fix my problem. I will ask the vendor to ad=
d a compiler C++ in his Yocto image.
Because, Yocto development is really too hard for me. However, i will try =
to do it myself..

I understand, each distribution has his own "packages".
Yocto is a tool which is able to create your own distribution, for a speci=
fic application. So it's opt to me, to install the packages that i need in =
my application, without superfluous, that Ubuntu proposes.

Can i just modify a single file, and add a line for adding g++ in my Yocto=
 distribution?
Or i have to modify a lot of files?

--QYcR2VNrQYYOCAs9WNGr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin<br /><br />On Thu, Jul 23, 2020 at 05:31 PM, Quentin Schulz wrot=
e:<br />
<blockquote>You can just replace Yocto with Buildroot (which would have th=
e same<br />issue with package management AFAICT). Or replace the Yocto on =
your<br />board currently with your own. Ask your vendor about this, they'l=
l<br />probably provide layers and if lucky instructions.</blockquote>
I think it's the better way to fix my problem. I will ask the vendor to ad=
d a compiler C++ in his Yocto image.&nbsp;<br />Because, Yocto development =
is really too hard for me. However, i will try to do it myself..<br /><br /=
>I understand, each distribution has his own "packages".&nbsp;<br />Yocto i=
s a tool which is able to create your own distribution, for a specific appl=
ication. So it's opt to me, to install the packages that i need in my appli=
cation, without superfluous, that Ubuntu proposes.&nbsp;<br /><br />Can i j=
ust modify a single file, and add a line for adding g++ in my Yocto distrib=
ution?&nbsp;<br />Or i have to modify a lot of files?&nbsp;<br /><br /><br =
/><br />

--QYcR2VNrQYYOCAs9WNGr--
