.class final Lmobi/androidcloud/lib/session/f$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/androidcloud/lib/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic jW:Lmobi/androidcloud/lib/session/f;


# direct methods
.method private constructor <init>(Lmobi/androidcloud/lib/session/f;)V
    .registers 2

    .prologue
    .line 376
    iput-object p1, p0, Lmobi/androidcloud/lib/session/f$a;->jW:Lmobi/androidcloud/lib/session/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/androidcloud/lib/session/f;Lmobi/androidcloud/lib/session/g;)V
    .registers 3

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lmobi/androidcloud/lib/session/f$a;-><init>(Lmobi/androidcloud/lib/session/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 380
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 382
    :goto_5
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f$a;->jW:Lmobi/androidcloud/lib/session/f;

    invoke-static {v0}, Lmobi/androidcloud/lib/session/f;->a(Lmobi/androidcloud/lib/session/f;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 383
    iget-object v0, p0, Lmobi/androidcloud/lib/session/f$a;->jW:Lmobi/androidcloud/lib/session/f;

    invoke-static {v0}, Lmobi/androidcloud/lib/session/f;->b(Lmobi/androidcloud/lib/session/f;)V

    goto :goto_5

    .line 385
    :cond_13
    return-void
.end method
