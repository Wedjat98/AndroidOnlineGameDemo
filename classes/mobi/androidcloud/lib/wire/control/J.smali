.class public final Lmobi/androidcloud/lib/wire/control/J;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# instance fields
.field public kV:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/androidcloud/lib/wire/control/J;->kV:Z

    .line 21
    return-void
.end method
