.class public final enum Lmobi/androidcloud/lib/net/transport/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lmobi/androidcloud/lib/net/transport/c;


# static fields
.field public static final enum iD:Lmobi/androidcloud/lib/net/transport/d;


# instance fields
.field private final iA:Lmobi/androidcloud/lib/net/transport/b;

.field private iy:[I

.field private iz:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lmobi/androidcloud/lib/net/transport/d;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/net/transport/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/androidcloud/lib/net/transport/d;->iD:Lmobi/androidcloud/lib/net/transport/d;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lmobi/androidcloud/lib/net/transport/d;

    sget-object v1, Lmobi/androidcloud/lib/net/transport/d;->iD:Lmobi/androidcloud/lib/net/transport/d;

    aput-object v1, v0, v2

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 6

    .prologue
    const/16 v1, 0x100

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iy:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_224

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iz:[I

    .line 52
    new-instance v0, Lmobi/androidcloud/lib/net/transport/b;

    iget-object v1, p0, Lmobi/androidcloud/lib/net/transport/d;->iy:[I

    iget-object v2, p0, Lmobi/androidcloud/lib/net/transport/d;->iz:[I

    invoke-direct {v0, v1, v2}, Lmobi/androidcloud/lib/net/transport/b;-><init>([I[I)V

    iput-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iA:Lmobi/androidcloud/lib/net/transport/b;

    return-void

    .line 13
    nop

    :array_20
    .array-data 4
        0x41
        0xcf
        0x2e
        0x8e
        0x45
        0xdc
        0x56
        0x4
        0x7b
        0xaf
        0x65
        0xb7
        0x3
        0x1d
        0xa4
        0x28
        0x35
        0x99
        0xb1
        0xe4
        0xbe
        0x84
        0xc1
        0x19
        0x8a
        0xf
        0xe1
        0x5c
        0xcd
        0xac
        0xf4
        0xd8
        0x27
        0xe7
        0x8b
        0xef
        0x80
        0x4b
        0x5f
        0x72
        0xa6
        0xf7
        0x9a
        0xbf
        0xe0
        0xf9
        0x24
        0xee
        0xa8
        0x66
        0xfa
        0x3f
        0x6f
        0x95
        0x2f
        0x6b
        0xd7
        0xb4
        0xf3
        0xd3
        0x7a
        0x85
        0x16
        0xa7
        0x7d
        0x63
        0xbc
        0xd4
        0xc0
        0x9
        0xe3
        0xa2
        0x79
        0x78
        0xcb
        0xb2
        0x5
        0x1a
        0x8f
        0xea
        0x68
        0xd9
        0xa0
        0x29
        0xdb
        0xd2
        0xf0
        0xc2
        0x23
        0xc5
        0x34
        0xab
        0xf8
        0x43
        0x13
        0xb9
        0x89
        0x58
        0x62
        0x39
        0x0
        0x25
        0xb6
        0xc8
        0xba
        0x2d
        0x1b
        0xf2
        0x4d
        0x15
        0xfe
        0xc
        0x70
        0x2b
        0x54
        0xde
        0xd1
        0xd5
        0x83
        0xeb
        0x91
        0xff
        0x88
        0x36
        0x6c
        0xc9
        0xec
        0x6d
        0xbb
        0x69
        0x74
        0x61
        0x71
        0x64
        0x49
        0x9c
        0x5e
        0xb0
        0x52
        0xbd
        0x12
        0x8d
        0xae
        0x82
        0x3e
        0x6a
        0xb8
        0xd
        0x31
        0x5b
        0x33
        0x4c
        0x46
        0x26
        0x9e
        0x14
        0x48
        0x76
        0x9b
        0x30
        0xa1
        0x7c
        0xc7
        0x4e
        0x38
        0xc4
        0xd0
        0x97
        0x37
        0x4f
        0x10
        0x9d
        0x81
        0xc6
        0x86
        0x93
        0xce
        0xb
        0x1e
        0xaa
        0xc3
        0x2
        0x6
        0xca
        0x20
        0x3a
        0x67
        0x17
        0x44
        0x1c
        0x4a
        0x1
        0xe6
        0x1f
        0x47
        0x22
        0x9f
        0xb5
        0x60
        0x3b
        0xe9
        0xb3
        0x8c
        0xed
        0xf1
        0x53
        0x87
        0xfc
        0x7e
        0x92
        0xe2
        0xa5
        0x5a
        0x7
        0xad
        0xda
        0xf5
        0xfd
        0x7f
        0x98
        0x77
        0x51
        0x2a
        0x50
        0x59
        0x5d
        0x2c
        0xe8
        0xe5
        0x42
        0x90
        0x40
        0xf6
        0x96
        0x57
        0x3c
        0x11
        0xfb
        0x94
        0xcc
        0x18
        0x75
        0x21
        0x32
        0x6e
        0x73
        0xdf
        0xa
        0x8
        0xa9
        0x55
        0xdd
        0xe
        0x3d
        0xd6
        0xa3
    .end array-data

    .line 32
    :array_224
    .array-data 4
        0x64
        0xbf
        0xb5
        0xc
        0x7
        0x4c
        0xb6
        0xd5
        0xf8
        0x45
        0xf7
        0xb1
        0x6f
        0x93
        0xfc
        0x19
        0xaa
        0xec
        0x8c
        0x5e
        0x9b
        0x6d
        0x3e
        0xbb
        0xf0
        0x17
        0x4d
        0x6a
        0xbd
        0xd
        0xb2
        0xc1
        0xb8
        0xf2
        0xc3
        0x58
        0x2e
        0x65
        0x99
        0x20
        0xf
        0x53
        0xde
        0x71
        0xe2
        0x69
        0x2
        0x36
        0x9f
        0x94
        0xf3
        0x96
        0x5a
        0x10
        0x7b
        0xa8
        0xa4
        0x63
        0xb9
        0xc7
        0xeb
        0xfd
        0x90
        0x33
        0xe7
        0x0
        0xe5
        0x5d
        0xbc
        0x4
        0x98
        0xc2
        0x9c
        0x86
        0xbe
        0x25
        0x97
        0x6c
        0xa3
        0xa9
        0xdf
        0xdd
        0x8a
        0xcd
        0x72
        0xfa
        0x6
        0xea
        0x61
        0xe0
        0xd4
        0x95
        0x1b
        0xe1
        0x88
        0x26
        0xc6
        0x83
        0x62
        0x41
        0x85
        0xa
        0x31
        0xba
        0x50
        0x81
        0x91
        0x37
        0x7c
        0x7f
        0xf4
        0x34
        0x70
        0x84
        0x27
        0xf5
        0x82
        0xf1
        0x9d
        0xdc
        0x49
        0x48
        0x3c
        0x8
        0xa1
        0x40
        0xd0
        0xda
        0x24
        0xac
        0x8f
        0x76
        0x15
        0x3d
        0xae
        0xce
        0x7a
        0x60
        0x18
        0x22
        0xca
        0x8d
        0x3
        0x4e
        0xe6
        0x78
        0xd1
        0xaf
        0xee
        0x35
        0xe9
        0xa7
        0xdb
        0x11
        0x2a
        0x9e
        0x87
        0xab
        0x9a
        0xc4
        0x52
        0xa0
        0x47
        0xff
        0xe
        0xd3
        0x28
        0x3f
        0x30
        0xf9
        0xb3
        0x5b
        0x1d
        0xd6
        0x8e
        0x9
        0x89
        0x12
        0x4b
        0xc9
        0x39
        0xc5
        0x66
        0xb
        0x92
        0x5f
        0x68
        0x80
        0x42
        0x8b
        0x14
        0x2b
        0x44
        0x16
        0x57
        0xb4
        0xa5
        0x59
        0xad
        0xa2
        0x67
        0x7d
        0xb7
        0x4a
        0xef
        0x1c
        0xb0
        0x1
        0xa6
        0x74
        0x55
        0x3b
        0x43
        0x75
        0xfe
        0x38
        0x1f
        0x51
        0xd7
        0x54
        0x5
        0xfb
        0x73
        0xf6
        0x2c
        0x1a
        0xd2
        0x46
        0x13
        0xe4
        0xc0
        0x21
        0xe3
        0xc8
        0x4f
        0x77
        0x7e
        0xcb
        0x2f
        0x23
        0x56
        0xcc
        0x6b
        0x3a
        0x1e
        0xd8
        0xe8
        0x29
        0x5c
        0x2d
        0x32
        0xed
        0xcf
        0xd9
        0x6e
        0x79
    .end array-data
.end method

.method public static a(ILcom/google/protobuf/q;)Ljava/net/DatagramPacket;
    .registers 6

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/q;->toByteArray()[B

    move-result-object v0

    .line 84
    sget-object v1, Lmobi/androidcloud/lib/net/transport/d;->iD:Lmobi/androidcloud/lib/net/transport/d;

    invoke-virtual {v1, v0}, Lmobi/androidcloud/lib/net/transport/d;->k([B)[B

    move-result-object v0

    .line 87
    new-instance v1, Lmobi/androidcloud/lib/wire/data/d;

    invoke-direct {v1, p0, v0}, Lmobi/androidcloud/lib/wire/data/d;-><init>(I[B)V

    .line 90
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Lmobi/androidcloud/lib/wire/data/b;->kr()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Lmobi/androidcloud/lib/wire/data/b;->getTotalSize()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Ljava/net/DatagramPacket;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public aq(I)I
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iA:Lmobi/androidcloud/lib/net/transport/b;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/net/transport/b;->aq(I)I

    move-result v0

    return v0
.end method

.method public c(B)B
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iA:Lmobi/androidcloud/lib/net/transport/b;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/net/transport/b;->c(B)B

    move-result v0

    return v0
.end method

.method public k([B)[B
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lmobi/androidcloud/lib/net/transport/d;->iA:Lmobi/androidcloud/lib/net/transport/b;

    invoke-virtual {v0, p1}, Lmobi/androidcloud/lib/net/transport/b;->k([B)[B

    move-result-object v0

    return-object v0
.end method
