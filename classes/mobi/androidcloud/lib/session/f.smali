.class public final Lmobi/androidcloud/lib/session/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/session/f$a;
    }
.end annotation


# static fields
.field public static volatile jt:Z

.field public static volatile ju:Z


# instance fields
.field private final iY:I

.field private final ir:Ljava/lang/String;

.field private final is:I

.field private jA:I

.field private jB:I

.field private jC:[I

.field private jD:I

.field private jE:I

.field private jF:I

.field private jG:Ljava/lang/String;

.field private jH:Ljava/lang/String;

.field private jI:Z

.field private jJ:Z

.field private jK:Lmobi/androidcloud/lib/audio/g;

.field private jL:Lmobi/androidcloud/lib/session/b;

.field private jM:[B

.field private jN:Z

.field private jO:Z

.field private jP:Ljava/lang/String;

.field private jQ:I

.field private jR:I

.field private jS:Ljava/lang/String;

.field private jT:Ljava/lang/String;

.field private jU:Z

.field private jr:I

.field private js:[B

.field private jv:Ljava/net/DatagramPacket;

.field private volatile jw:Z

.field private jx:Lmobi/androidcloud/lib/session/a;

.field private final jy:Lmobi/androidcloud/lib/wire/data/c;

.field private jz:Lmobi/androidcloud/lib/audio/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lmobi/androidcloud/lib/session/f;->jt:Z

    .line 40
    sput-boolean v0, Lmobi/androidcloud/lib/session/f;->ju:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZZ)V
    .registers 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v4, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    .line 34
    const v0, 0xfde8

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->js:[B

    .line 42
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->js:[B

    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->js:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jv:Ljava/net/DatagramPacket;

    .line 47
    iput-boolean v4, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    iput v3, p0, Lmobi/androidcloud/lib/session/f;->jA:I

    .line 66
    iput v3, p0, Lmobi/androidcloud/lib/session/f;->jB:I

    .line 68
    const/16 v0, 0x2ee

    new-array v0, v0, [I

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jC:[I

    .line 70
    iput v4, p0, Lmobi/androidcloud/lib/session/f;->jD:I

    .line 71
    iput v4, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    .line 72
    iput v4, p0, Lmobi/androidcloud/lib/session/f;->jF:I

    .line 74
    const-string v0, "Normal"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    .line 75
    const-string v0, "No"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jH:Ljava/lang/String;

    .line 79
    iput-boolean v3, p0, Lmobi/androidcloud/lib/session/f;->jJ:Z

    .line 81
    new-instance v0, Lmobi/androidcloud/lib/audio/g;

    invoke-direct {v0}, Lmobi/androidcloud/lib/audio/g;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jK:Lmobi/androidcloud/lib/audio/g;

    .line 82
    new-instance v0, Lmobi/androidcloud/lib/session/b;

    invoke-direct {v0}, Lmobi/androidcloud/lib/session/b;-><init>()V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jL:Lmobi/androidcloud/lib/session/b;

    .line 84
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jM:[B

    .line 86
    iput-boolean v3, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    .line 90
    iput-boolean v3, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    .line 105
    iput p1, p0, Lmobi/androidcloud/lib/session/f;->iY:I

    .line 106
    iput-object p2, p0, Lmobi/androidcloud/lib/session/f;->ir:Ljava/lang/String;

    .line 107
    iput p3, p0, Lmobi/androidcloud/lib/session/f;->is:I

    .line 108
    new-instance v0, Lmobi/androidcloud/lib/wire/data/c;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/wire/data/c;-><init>(I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jy:Lmobi/androidcloud/lib/wire/data/c;

    .line 109
    iput-boolean p4, p0, Lmobi/androidcloud/lib/session/f;->jI:Z

    .line 110
    iput-boolean p5, p0, Lmobi/androidcloud/lib/session/f;->jU:Z

    .line 111
    return-void
.end method

.method private a(Ljava/net/InetAddress;I[BI)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 685
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/16 v1, 0xa

    invoke-direct {v0, p3, v1, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 689
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1d

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping P2P Messages:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 725
    :cond_1c
    :goto_1c
    return-void

    .line 700
    :cond_1d
    :try_start_1d
    invoke-static {v0}, Lmobi/tikl/wire/control/a$Q;->e(Ljava/io/InputStream;)Lmobi/tikl/wire/control/a$Q;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Q;->getType()I

    move-result v1

    .line 704
    if-ne v1, v3, :cond_1c

    .line 706
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    .line 708
    sget-object v1, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lmobi/androidcloud/lib/session/h;->d(Ljava/lang/String;I)V

    .line 710
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$Q;->yB()I

    move-result v0

    .line 712
    if-ne v0, v3, :cond_6f

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    .line 717
    :goto_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Direct Peer Address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 725
    :catch_6d
    move-exception v0

    goto :goto_1c

    .line 715
    :cond_6f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jN:Z
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_72} :catch_6d

    goto :goto_3c
.end method

.method private a(Lmobi/androidcloud/lib/wire/data/b;)V
    .registers 6

    .prologue
    .line 831
    :try_start_0
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jv:Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Lmobi/androidcloud/lib/wire/data/b;->kr()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lmobi/androidcloud/lib/wire/data/b;->getTotalSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 833
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    if-eqz v0, :cond_1e

    .line 835
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jv:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/h;->a(Ljava/net/DatagramPacket;)V

    .line 846
    :goto_1d
    return-void

    .line 840
    :cond_1e
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jv:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/h;->send(Ljava/net/DatagramPacket;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_1d

    .line 845
    :catch_26
    move-exception v0

    goto :goto_1d
.end method

.method private a(Lmobi/tikl/wire/control/a$I;)V
    .registers 6

    .prologue
    .line 899
    iget v0, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_15

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Peer Address skipped currentActiveCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 902
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 952
    :goto_14
    return-void

    .line 906
    :cond_15
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 907
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$I;->getPort()I

    move-result v1

    .line 912
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handling peer address from server "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 914
    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget v2, p0, Lmobi/androidcloud/lib/session/f;->jQ:I

    if-eq v2, v1, :cond_5a

    .line 924
    :cond_45
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 927
    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jP:Ljava/lang/String;

    .line 928
    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jQ:I

    .line 930
    sget-object v2, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v2, v0, v1}, Lmobi/androidcloud/lib/session/h;->d(Ljava/lang/String;I)V

    .line 934
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->km()V

    .line 935
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->km()V

    .line 936
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->km()V

    .line 940
    :cond_5a
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    if-nez v0, :cond_8e

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkCheck to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 946
    :cond_8e
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->km()V
    :try_end_91
    .catch Ljava/net/UnknownHostException; {:try_start_25 .. :try_end_91} :catch_92

    goto :goto_14

    .line 948
    :catch_92
    move-exception v0

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unnownknown host exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_14
.end method

.method private a(Lmobi/tikl/wire/control/a$aq;)V
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 756
    iget v0, p0, Lmobi/androidcloud/lib/session/f;->jA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/session/f;->jA:I

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 762
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->Gx()I

    move-result v0

    .line 765
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    if-le v0, v1, :cond_4c

    .line 766
    if-le v0, v2, :cond_17

    .line 771
    const/4 v1, 0x0

    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    .line 775
    :cond_17
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kk()V

    .line 776
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->ki()V

    .line 777
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/k;->it()V

    .line 785
    :cond_24
    :goto_24
    iput v0, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    .line 788
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    if-le v1, v2, :cond_2d

    .line 790
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 793
    :cond_2d
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    iget v2, p0, Lmobi/androidcloud/lib/session/f;->jF:I

    if-le v1, v2, :cond_37

    .line 794
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jF:I

    .line 796
    :cond_37
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->Gw()Ljava/util/List;

    move-result-object v1

    .line 797
    invoke-virtual {p1}, Lmobi/tikl/wire/control/a$aq;->Gz()Lmobi/tikl/wire/control/a$H;

    move-result-object v2

    .line 799
    sget-object v3, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v3, v1, v2}, Lmobi/androidcloud/lib/session/d;->c(Ljava/util/List;Lmobi/tikl/wire/control/a$H;)V

    .line 802
    invoke-virtual {v2}, Lmobi/tikl/wire/control/a$H;->vR()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmobi/androidcloud/lib/session/f;->jD:I

    .line 805
    return-void

    .line 779
    :cond_4c
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jE:I

    if-ge v0, v1, :cond_24

    .line 780
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kk()V

    .line 782
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/androidcloud/lib/audio/k;->iu()V

    goto :goto_24
.end method

.method static synthetic a(Lmobi/androidcloud/lib/session/f;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    return v0
.end method

.method static synthetic b(Lmobi/androidcloud/lib/session/f;)V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->play()V

    return-void
.end method

.method static synthetic c(Lmobi/androidcloud/lib/session/f;)Lmobi/androidcloud/lib/audio/c;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    return-object v0
.end method

.method private c([BI)V
    .registers 7

    .prologue
    .line 730
    new-instance v0, Lmobi/androidcloud/lib/net/transport/e;

    sget-object v1, Lmobi/androidcloud/lib/net/transport/d;->iD:Lmobi/androidcloud/lib/net/transport/d;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/16 v3, 0xa

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/net/transport/e;-><init>(Lmobi/androidcloud/lib/net/transport/c;Ljava/io/InputStream;)V

    .line 736
    :try_start_e
    invoke-static {v0}, Lmobi/tikl/wire/control/a$al;->f(Ljava/io/InputStream;)Lmobi/tikl/wire/control/a$al;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->EG()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 739
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Ff()Lmobi/tikl/wire/control/a$aq;

    move-result-object v0

    .line 740
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/session/f;->a(Lmobi/tikl/wire/control/a$aq;)V

    .line 751
    :cond_1f
    :goto_1f
    return-void

    .line 742
    :cond_20
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Fg()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 744
    invoke-virtual {v0}, Lmobi/tikl/wire/control/a$al;->Fh()Lmobi/tikl/wire/control/a$I;

    move-result-object v0

    .line 745
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/session/f;->a(Lmobi/tikl/wire/control/a$I;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2d} :catch_2e

    goto :goto_1f

    .line 751
    :catch_2e
    move-exception v0

    goto :goto_1f
.end method

.method private kh()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 230
    const/16 v0, 0x1388

    new-array v4, v0, [B

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 244
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/c;->hV()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 246
    iput v14, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    move v7, v2

    move v3, v2

    move v6, v2

    .line 258
    :goto_17
    :try_start_17
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    if-eqz v0, :cond_c1

    .line 262
    iget v0, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    if-nez v0, :cond_86

    .line 265
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    invoke-virtual {v0, v4}, Lmobi/androidcloud/lib/audio/c;->h([B)I

    move-result v5

    .line 266
    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->li:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 268
    add-int/lit8 v0, v6, 0x1

    .line 269
    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move-object v0, v1

    move v1, v5

    .line 285
    :goto_2e
    rem-int/lit8 v5, v6, 0x4b

    if-eqz v5, :cond_36

    rem-int/lit8 v5, v6, 0x4b

    if-ne v5, v14, :cond_3e

    .line 288
    :cond_36
    iget-object v5, p0, Lmobi/androidcloud/lib/session/f;->jL:Lmobi/androidcloud/lib/session/b;

    invoke-virtual {v5}, Lmobi/androidcloud/lib/session/b;->jP()Z

    move-result v5

    iput-boolean v5, p0, Lmobi/androidcloud/lib/session/f;->jJ:Z

    .line 292
    :cond_3e
    const/16 v5, 0x2d

    if-lt v3, v5, :cond_cd

    .line 295
    iget-object v3, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v3}, Lmobi/androidcloud/lib/session/a;->jM()V

    move v5, v2

    .line 301
    :goto_48
    iget-boolean v3, p0, Lmobi/androidcloud/lib/session/f;->jJ:Z

    if-eqz v3, :cond_cb

    .line 304
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jD:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_96

    .line 306
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jK:Lmobi/androidcloud/lib/audio/g;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/g;->ic()[B

    move-result-object v3

    .line 307
    const/16 v1, 0x26

    .line 308
    sget-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->li:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 309
    const/4 v10, 0x0

    iput v10, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    .line 315
    :goto_5e
    if-nez v1, :cond_9c

    .line 318
    iget v0, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    if-nez v0, :cond_99

    .line 319
    add-int/lit8 v0, v7, 0x1

    .line 324
    :goto_66
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_c7

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    .line 328
    const-wide/16 v12, 0x2af8

    cmp-long v1, v10, v12

    if-gtz v1, :cond_7d

    .line 331
    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jI:Z

    if-eqz v1, :cond_7d

    .line 334
    const-string v1, "Yes"

    iput-object v1, p0, Lmobi/androidcloud/lib/session/f;->jH:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_7d} :catch_b3
    .catchall {:try_start_17 .. :try_end_7d} :catchall_c2

    :cond_7d
    move v7, v0

    move v3, v5

    .line 336
    goto :goto_17

    .line 251
    :cond_80
    iput v2, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    move v7, v2

    move v3, v2

    move v6, v2

    goto :goto_17

    .line 275
    :cond_86
    :try_start_86
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    invoke-virtual {v0, v4}, Lmobi/androidcloud/lib/audio/c;->i([B)I

    move-result v5

    .line 276
    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->lj:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 278
    add-int/lit8 v0, v6, 0x2

    .line 279
    add-int/lit8 v3, v3, 0x2

    move v6, v0

    move-object v0, v1

    move v1, v5

    goto :goto_2e

    :cond_96
    move v1, v2

    move-object v3, v4

    .line 312
    goto :goto_5e

    .line 321
    :cond_99
    add-int/lit8 v0, v7, 0x2

    goto :goto_66

    .line 342
    :cond_9c
    sget-boolean v10, Lmobi/androidcloud/lib/session/f;->jt:Z

    if-nez v10, :cond_c4

    .line 345
    iget-object v10, p0, Lmobi/androidcloud/lib/session/f;->jy:Lmobi/androidcloud/lib/wire/data/c;

    const/4 v11, 0x0

    int-to-short v1, v1

    invoke-virtual {v10, v0, v3, v11, v1}, Lmobi/androidcloud/lib/wire/data/c;->a(Lmobi/androidcloud/lib/wire/data/b$a;[BIS)Lmobi/androidcloud/lib/wire/data/b;

    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Lmobi/androidcloud/lib/session/f;->a(Lmobi/androidcloud/lib/wire/data/b;)V

    .line 349
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/a;->jN()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_b0} :catch_b3
    .catchall {:try_start_86 .. :try_end_b0} :catchall_c2

    move v3, v5

    goto/16 :goto_17

    .line 365
    :catch_b3
    move-exception v0

    .line 366
    :try_start_b4
    const-string v1, "RecorderBusted"

    iput-object v1, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jT:Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z
    :try_end_c1
    .catchall {:try_start_b4 .. :try_end_c1} :catchall_c2

    .line 372
    :cond_c1
    return-void

    :catchall_c2
    move-exception v0

    throw v0

    :cond_c4
    move v3, v5

    goto/16 :goto_17

    :cond_c7
    move v7, v0

    move v3, v5

    goto/16 :goto_17

    :cond_cb
    move-object v3, v4

    goto :goto_5e

    :cond_cd
    move v5, v3

    goto/16 :goto_48
.end method

.method private ki()V
    .registers 2

    .prologue
    .line 808
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->ip()V

    .line 811
    return-void
.end method

.method private kj()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 868
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/h;->ko()V

    .line 870
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 871
    const-string v0, ""

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jP:Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/a;->r(Z)V

    .line 874
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/a;->r(Z)V

    .line 875
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/session/a;->r(Z)V

    .line 877
    return-void
.end method

.method private kk()V
    .registers 4

    .prologue
    .line 884
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x2ee

    if-ge v0, v1, :cond_d

    .line 887
    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jC:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    :cond_d
    return-void
.end method

.method private kl()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 892
    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    .line 893
    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    .line 894
    return-void
.end method

.method private km()V
    .registers 4

    .prologue
    .line 956
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    invoke-static {v0}, Lcom/google/protobuf/d;->b(Z)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 960
    :try_start_6
    sget-object v1, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/session/h;->a(Ljava/net/DatagramPacket;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 965
    :goto_b
    return-void

    .line 962
    :catch_c
    move-exception v0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sending peer message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method private play()V
    .registers 9

    .prologue
    const v2, 0xfde8

    const/4 v1, 0x0

    .line 392
    .line 398
    new-array v0, v2, [B

    .line 400
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 403
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kk()V

    .line 405
    sget v2, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    move v0, v1

    move v3, v1

    .line 425
    :cond_12
    :goto_12
    :try_start_12
    iget-boolean v5, p0, Lmobi/androidcloud/lib/session/f;->jw:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14} :catch_d8
    .catchall {:try_start_12 .. :try_end_14} :catchall_e7

    if-eqz v5, :cond_e6

    .line 433
    const v5, 0xfde8

    :try_start_19
    invoke-virtual {v4, v5}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 435
    sget v5, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    if-eq v2, v5, :cond_2e

    .line 442
    iget v5, p0, Lmobi/androidcloud/lib/session/f;->jR:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmobi/androidcloud/lib/session/f;->jR:I

    .line 444
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 445
    sget v2, Lmobi/androidcloud/lib/session/ConnectivityReceiver;->hM:I

    .line 446
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kj()V

    .line 450
    :cond_2e
    sget-object v5, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v5}, Lmobi/androidcloud/lib/session/h;->kn()Ljava/net/DatagramSocket;

    move-result-object v5

    .line 452
    invoke-virtual {v5, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_37
    .catch Ljava/net/PortUnreachableException; {:try_start_19 .. :try_end_37} :catch_af
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_37} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_37} :catch_d8
    .catchall {:try_start_19 .. :try_end_37} :catchall_e7

    .line 458
    :try_start_37
    rem-int/lit8 v0, v3, 0x64

    if-nez v0, :cond_6f

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Frame: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Len: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " bytes from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6f
    .catch Ljava/net/PortUnreachableException; {:try_start_37 .. :try_end_6f} :catch_f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_37 .. :try_end_6f} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6f} :catch_d8
    .catchall {:try_start_37 .. :try_end_6f} :catchall_e7

    .line 465
    :cond_6f
    add-int/lit8 v0, v3, 0x1

    .line 467
    :try_start_71
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    .line 469
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    .line 474
    invoke-static {v3}, Lmobi/androidcloud/lib/wire/data/b;->r([B)Z

    move-result v6

    if-nez v6, :cond_87

    invoke-static {v3}, Lmobi/androidcloud/lib/wire/data/b;->s([B)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 477
    :cond_87
    invoke-virtual {p0, v3, v5}, Lmobi/androidcloud/lib/session/f;->b([BI)V

    move v3, v0

    move v0, v1

    goto :goto_12

    .line 479
    :cond_8d
    invoke-static {v3}, Lmobi/androidcloud/lib/wire/data/b;->p([B)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 481
    invoke-direct {p0, v3, v5}, Lmobi/androidcloud/lib/session/f;->c([BI)V

    move v3, v0

    move v0, v1

    goto/16 :goto_12

    .line 485
    :cond_9a
    invoke-static {v3}, Lmobi/androidcloud/lib/wire/data/b;->q([B)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 488
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-direct {p0, v6, v7, v3, v5}, Lmobi/androidcloud/lib/session/f;->a(Ljava/net/InetAddress;I[BI)V
    :try_end_ab
    .catch Ljava/net/PortUnreachableException; {:try_start_71 .. :try_end_ab} :catch_f3
    .catch Ljava/net/SocketTimeoutException; {:try_start_71 .. :try_end_ab} :catch_ec
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ab} :catch_d8
    .catchall {:try_start_71 .. :try_end_ab} :catchall_e7

    :cond_ab
    move v3, v0

    move v0, v1

    .line 493
    goto/16 :goto_12

    .line 497
    :catch_af
    move-exception v5

    :goto_b0
    const-wide/16 v6, 0x32

    :try_start_b2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    .line 502
    goto/16 :goto_12

    .line 523
    :catch_b9
    move-exception v5

    :goto_ba
    add-int/lit8 v0, v0, 0x1

    .line 526
    const/16 v5, 0x96

    if-lt v0, v5, :cond_c9

    .line 527
    const-string v5, "NoHB"

    iput-object v5, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    .line 529
    sget-object v5, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v5}, Lmobi/androidcloud/lib/session/d;->kf()V

    .line 532
    :cond_c9
    and-int/lit8 v5, v0, 0xf

    if-nez v5, :cond_cd

    .line 533
    :cond_cd
    mul-int/lit8 v5, v0, 0x64

    const/16 v6, 0x7530

    if-le v5, v6, :cond_12

    .line 559
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmobi/androidcloud/lib/session/f;->jw:Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d6} :catch_d8
    .catchall {:try_start_b2 .. :try_end_d6} :catchall_e7

    goto/16 :goto_12

    .line 567
    :catch_d8
    move-exception v0

    .line 568
    :try_start_d9
    const-string v1, "PlayerBusted"

    iput-object v1, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    .line 570
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jS:Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_e7

    .line 574
    :cond_e6
    return-void

    :catchall_e7
    move-exception v0

    throw v0

    .line 523
    :catch_e9
    move-exception v0

    move v0, v1

    goto :goto_ba

    :catch_ec
    move-exception v3

    move v3, v0

    move v0, v1

    goto :goto_ba

    .line 497
    :catch_f0
    move-exception v0

    move v0, v1

    goto :goto_b0

    :catch_f3
    move-exception v3

    move v3, v0

    move v0, v1

    goto :goto_b0
.end method


# virtual methods
.method public b([BI)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 605
    invoke-static {p1}, Lmobi/androidcloud/lib/wire/data/b;->o([B)S

    move-result v0

    .line 609
    const/16 v1, 0xa

    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jM:[B

    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jJ:Z

    if-nez v1, :cond_22

    sget-boolean v1, Lmobi/androidcloud/lib/session/f;->ju:Z

    if-nez v1, :cond_22

    .line 619
    rem-int/lit16 v1, v0, 0x2ee

    .line 622
    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jC:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_23

    .line 624
    iget v0, p0, Lmobi/androidcloud/lib/session/f;->jB:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/androidcloud/lib/session/f;->jB:I

    .line 648
    :cond_22
    :goto_22
    return-void

    .line 629
    :cond_23
    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jC:[I

    aput v0, v2, v1

    .line 631
    invoke-static {p1}, Lmobi/androidcloud/lib/wire/data/b;->r([B)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 633
    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    .line 634
    iput v3, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    .line 638
    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jM:[B

    invoke-virtual {v1, v2, v0}, Lmobi/androidcloud/lib/audio/c;->a([BI)V

    goto :goto_22

    .line 640
    :cond_39
    invoke-static {p1}, Lmobi/androidcloud/lib/wire/data/b;->s([B)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 644
    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    iget-object v2, p0, Lmobi/androidcloud/lib/session/f;->jM:[B

    invoke-virtual {v1, v2, p2, v0}, Lmobi/androidcloud/lib/audio/c;->g([BII)V

    goto :goto_22
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 814
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    return v0
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 119
    const-string v0, "NoException"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jS:Ljava/lang/String;

    .line 122
    const-string v0, "NoException"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jT:Ljava/lang/String;

    .line 124
    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jR:I

    .line 126
    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jB:I

    .line 128
    iput v1, p0, Lmobi/androidcloud/lib/session/f;->jA:I

    .line 130
    iput-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jJ:Z

    .line 132
    const-string v0, "Normal"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    .line 134
    const-string v0, "No"

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jH:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/google/protobuf/d;->B()Lmobi/androidcloud/lib/audio/c;

    move-result-object v0

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    .line 138
    sput-boolean v1, Lmobi/androidcloud/lib/session/f;->jt:Z

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 145
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kl()V

    .line 150
    :try_start_30
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    iget-object v1, p0, Lmobi/androidcloud/lib/session/f;->ir:Ljava/lang/String;

    iget v2, p0, Lmobi/androidcloud/lib/session/f;->is:I

    invoke-virtual {v0, v1, v2}, Lmobi/androidcloud/lib/session/h;->c(Ljava/lang/String;I)V

    .line 151
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/h;->ko()V
    :try_end_3e
    .catch Ljava/net/SocketException; {:try_start_30 .. :try_end_3e} :catch_6c
    .catch Ljava/net/UnknownHostException; {:try_start_30 .. :try_end_3e} :catch_75

    .line 167
    sget-object v0, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    invoke-virtual {v0}, Lcom/talkray/arcvoice/utils/a;->hS()V

    .line 170
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 173
    new-instance v0, Lmobi/androidcloud/lib/session/a;

    iget v1, p0, Lmobi/androidcloud/lib/session/f;->iY:I

    invoke-direct {v0, v1}, Lmobi/androidcloud/lib/session/a;-><init>(I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    .line 174
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/a;->start()V

    .line 176
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/c;->hW()V

    .line 178
    new-instance v0, Lmobi/androidcloud/lib/session/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/androidcloud/lib/session/f$a;-><init>(Lmobi/androidcloud/lib/session/f;Lmobi/androidcloud/lib/session/g;)V

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/f$a;->start()V

    .line 180
    :goto_64
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    if-eqz v0, :cond_7e

    .line 181
    invoke-direct {p0}, Lmobi/androidcloud/lib/session/f;->kh()V

    goto :goto_64

    .line 153
    :catch_6c
    move-exception v0

    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->iq()V

    .line 225
    :goto_74
    return-void

    .line 159
    :catch_75
    move-exception v0

    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->iq()V

    goto :goto_74

    .line 185
    :cond_7e
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jN:Z

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jO:Z

    and-int v9, v0, v1

    .line 196
    const-wide/16 v0, 0xc8

    :try_start_86
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_d3

    .line 203
    :goto_89
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jz:Lmobi/androidcloud/lib/audio/c;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/c;->hX()V

    .line 205
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f;->jx:Lmobi/androidcloud/lib/session/a;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/a;->stop()V

    .line 208
    sget-object v0, Lmobi/androidcloud/lib/session/h;->jX:Lmobi/androidcloud/lib/session/h;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/h;->close()V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Talkray Call Ended with Voice Encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : P2P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    sget-object v0, Lcom/talkray/arcvoice/utils/a;->fU:Lcom/talkray/arcvoice/utils/a;

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/f;->jI:Z

    iget v2, p0, Lmobi/androidcloud/lib/session/f;->jD:I

    iget v3, p0, Lmobi/androidcloud/lib/session/f;->jF:I

    iget v4, p0, Lmobi/androidcloud/lib/session/f;->jA:I

    iget-object v5, p0, Lmobi/androidcloud/lib/session/f;->jG:Ljava/lang/String;

    iget-object v6, p0, Lmobi/androidcloud/lib/session/f;->jH:Ljava/lang/String;

    iget v7, p0, Lmobi/androidcloud/lib/session/f;->jB:I

    iget v8, p0, Lmobi/androidcloud/lib/session/f;->jr:I

    iget v10, p0, Lmobi/androidcloud/lib/session/f;->jR:I

    iget-object v11, p0, Lmobi/androidcloud/lib/session/f;->jS:Ljava/lang/String;

    iget-object v12, p0, Lmobi/androidcloud/lib/session/f;->jT:Ljava/lang/String;

    iget-boolean v13, p0, Lmobi/androidcloud/lib/session/f;->jU:Z

    invoke-virtual/range {v0 .. v13}, Lcom/talkray/arcvoice/utils/a;->a(ZIIILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;Ljava/lang/String;Z)V

    .line 222
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->is()V

    goto :goto_74

    .line 198
    :catch_d3
    move-exception v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while sleeping..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_89
.end method

.method public setSpeakerMode(Z)V
    .registers 4

    .prologue
    .line 853
    iget-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    if-eqz v0, :cond_10

    .line 854
    new-instance v0, Lmobi/androidcloud/lib/session/g;

    invoke-direct {v0, p0, p1}, Lmobi/androidcloud/lib/session/g;-><init>(Lmobi/androidcloud/lib/session/f;Z)V

    .line 860
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 863
    :cond_10
    return-void
.end method

.method stop()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/androidcloud/lib/session/f;->jw:Z

    .line 115
    return-void
.end method
