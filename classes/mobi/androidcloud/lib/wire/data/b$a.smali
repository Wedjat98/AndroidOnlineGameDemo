.class public final enum Lmobi/androidcloud/lib/wire/data/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/wire/data/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum lf:Lmobi/androidcloud/lib/wire/data/b$a;

.field public static final enum lg:Lmobi/androidcloud/lib/wire/data/b$a;

.field private static enum lh:Lmobi/androidcloud/lib/wire/data/b$a;

.field public static final enum li:Lmobi/androidcloud/lib/wire/data/b$a;

.field public static final enum lj:Lmobi/androidcloud/lib/wire/data/b$a;

.field private static enum lk:Lmobi/androidcloud/lib/wire/data/b$a;


# instance fields
.field private ll:S


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "CONTROL_SESSION_INFO"

    invoke-direct {v0, v1, v4, v4}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->lf:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 143
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "P2P_CONTROL_INFO"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->lg:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 146
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "DATA_AUDIO_AMR_NB"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v6, v2}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->lh:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 147
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "DATA_AUDIO_ILBC"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v7, v2}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->li:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 148
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "DATA_AUDIO_OPUS"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v8, v2}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->lj:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 149
    new-instance v0, Lmobi/androidcloud/lib/wire/data/b$a;

    const-string v1, "DATA_VIDEO_VP8"

    const/4 v2, 0x5

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lmobi/androidcloud/lib/wire/data/b$a;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lmobi/androidcloud/lib/wire/data/b$a;->lk:Lmobi/androidcloud/lib/wire/data/b$a;

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [Lmobi/androidcloud/lib/wire/data/b$a;

    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->lf:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->lg:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->lh:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->li:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v1, v0, v7

    sget-object v1, Lmobi/androidcloud/lib/wire/data/b$a;->lj:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lmobi/androidcloud/lib/wire/data/b$a;->lk:Lmobi/androidcloud/lib/wire/data/b$a;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .registers 4

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput-short p3, p0, Lmobi/androidcloud/lib/wire/data/b$a;->ll:S

    .line 155
    return-void
.end method

.method static synthetic a(Lmobi/androidcloud/lib/wire/data/b$a;)S
    .registers 2

    .prologue
    .line 140
    iget-short v0, p0, Lmobi/androidcloud/lib/wire/data/b$a;->ll:S

    return v0
.end method
