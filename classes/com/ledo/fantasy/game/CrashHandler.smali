.class public Lcom/ledo/fantasy/game/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static INSTANCE:Lcom/ledo/fantasy/game/CrashHandler;


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/ledo/fantasy/game/CrashHandler;

    invoke-direct {v0}, Lcom/ledo/fantasy/game/CrashHandler;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/CrashHandler;->INSTANCE:Lcom/ledo/fantasy/game/CrashHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/ledo/fantasy/game/CrashHandler;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/ledo/fantasy/game/CrashHandler;->INSTANCE:Lcom/ledo/fantasy/game/CrashHandler;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 18
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 19
    .local v0, "r":Ljava/lang/Throwable;
    if-nez v0, :cond_7

    move-object v0, p2

    .line 20
    :cond_7
    const-string v2, "EVENT_UNCAUGHT_EXCEPTION_HAPPEN"

    invoke-static {v2, v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEventException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "rn":Ljava/lang/String;
    invoke-static {v1, v1, v0}, Lcom/ledo/fantasy/game/FlurryManager;->FlurryError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/SecurityException;

    if-ne v2, v3, :cond_24

    .line 26
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 36
    :goto_23
    return-void

    .line 30
    :cond_24
    iget-object v2, p0, Lcom/ledo/fantasy/game/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ledo/fantasy/game/CrashHandler;

    if-ne v2, v3, :cond_32

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 33
    :cond_32
    iget-object v2, p0, Lcom/ledo/fantasy/game/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_23
.end method
