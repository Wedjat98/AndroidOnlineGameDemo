.class public final Lmobi/androidcloud/lib/serverproxy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .prologue
    .line 13
    new-instance v0, Lmobi/androidcloud/lib/serverproxy/a;

    invoke-direct {v0, p1}, Lmobi/androidcloud/lib/serverproxy/a;-><init>(Ljava/lang/Runnable;)V

    .line 19
    return-object v0
.end method
