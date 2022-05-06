.class public final Lmobi/androidcloud/lib/wire/control/L;
.super Lmobi/androidcloud/lib/wire/control/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/androidcloud/lib/wire/control/L$a;
    }
.end annotation


# instance fields
.field public final hL:Z

.field public final kY:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Lmobi/androidcloud/lib/wire/control/M;-><init>()V

    .line 25
    iput-object p1, p0, Lmobi/androidcloud/lib/wire/control/L;->kY:Ljava/util/List;

    .line 26
    iput-boolean p2, p0, Lmobi/androidcloud/lib/wire/control/L;->hL:Z

    .line 27
    return-void
.end method
