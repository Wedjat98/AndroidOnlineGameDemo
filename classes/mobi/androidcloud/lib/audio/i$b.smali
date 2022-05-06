.class final Lmobi/androidcloud/lib/audio/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field gP:[S

.field isNew:Z


# direct methods
.method private constructor <init>(Lmobi/androidcloud/lib/audio/i;)V
    .registers 3

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmobi/androidcloud/lib/audio/i$b;->gP:[S

    return-void
.end method

.method synthetic constructor <init>(Lmobi/androidcloud/lib/audio/i;Lmobi/androidcloud/lib/audio/b;)V
    .registers 3

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lmobi/androidcloud/lib/audio/i$b;-><init>(Lmobi/androidcloud/lib/audio/i;)V

    return-void
.end method
