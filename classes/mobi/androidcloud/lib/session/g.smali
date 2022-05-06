.class final Lmobi/androidcloud/lib/session/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic jV:Z

.field private synthetic jW:Lmobi/androidcloud/lib/session/f;


# direct methods
.method constructor <init>(Lmobi/androidcloud/lib/session/f;Z)V
    .registers 3

    .prologue
    .line 854
    iput-object p1, p0, Lmobi/androidcloud/lib/session/g;->jW:Lmobi/androidcloud/lib/session/f;

    iput-boolean p2, p0, Lmobi/androidcloud/lib/session/g;->jV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 857
    iget-object v0, p0, Lmobi/androidcloud/lib/session/g;->jW:Lmobi/androidcloud/lib/session/f;

    invoke-static {v0}, Lmobi/androidcloud/lib/session/f;->c(Lmobi/androidcloud/lib/session/f;)Lmobi/androidcloud/lib/audio/c;

    move-result-object v0

    iget-boolean v1, p0, Lmobi/androidcloud/lib/session/g;->jV:Z

    invoke-virtual {v0, v1}, Lmobi/androidcloud/lib/audio/c;->o(Z)V

    .line 858
    return-void
.end method
