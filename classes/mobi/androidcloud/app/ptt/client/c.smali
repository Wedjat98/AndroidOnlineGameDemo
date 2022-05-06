.class final Lmobi/androidcloud/app/ptt/client/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmobi/androidcloud/app/ptt/client/b;)V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 82
    invoke-static {}, Lmobi/androidcloud/lib/audio/k;->io()Lmobi/androidcloud/lib/audio/k;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/androidcloud/lib/audio/k;->ip()V

    .line 83
    sget-object v0, Lmobi/androidcloud/lib/session/d;->jg:Lmobi/androidcloud/lib/session/d;

    invoke-virtual {v0}, Lmobi/androidcloud/lib/session/d;->jU()V

    .line 84
    return-void
.end method
