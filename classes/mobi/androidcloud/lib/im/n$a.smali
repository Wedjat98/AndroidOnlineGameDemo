.class final Lmobi/androidcloud/lib/im/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/im/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final hK:Lmobi/androidcloud/lib/wire/control/L$a;

.field final hL:Z


# direct methods
.method private constructor <init>(Lmobi/androidcloud/lib/wire/control/L$a;Z)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmobi/androidcloud/lib/im/n$a;->hK:Lmobi/androidcloud/lib/wire/control/L$a;

    .line 28
    iput-boolean p2, p0, Lmobi/androidcloud/lib/im/n$a;->hL:Z

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lmobi/androidcloud/lib/wire/control/L$a;ZLmobi/androidcloud/lib/im/j;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lmobi/androidcloud/lib/im/n$a;-><init>(Lmobi/androidcloud/lib/wire/control/L$a;Z)V

    return-void
.end method
