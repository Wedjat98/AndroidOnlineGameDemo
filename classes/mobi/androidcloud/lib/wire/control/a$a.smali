.class public final Lmobi/androidcloud/lib/wire/control/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/wire/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final kD:D

.field public final kE:D


# direct methods
.method public constructor <init>(DD)V
    .registers 6

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lmobi/androidcloud/lib/wire/control/a$a;->kD:D

    .line 75
    iput-wide p3, p0, Lmobi/androidcloud/lib/wire/control/a$a;->kE:D

    .line 76
    return-void
.end method
