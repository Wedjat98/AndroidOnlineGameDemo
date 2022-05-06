.class public Lcom/iflytek/sunflower/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static c:Lcom/iflytek/sunflower/c/d;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/c/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sunflower/c/d;->b:Landroid/content/Context;

    :cond_18
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_3

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/iflytek/sunflower/c/d;->c:Lcom/iflytek/sunflower/c/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/iflytek/sunflower/c/d;

    invoke-direct {v0, p0}, Lcom/iflytek/sunflower/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/sunflower/c/d;->c:Lcom/iflytek/sunflower/c/d;

    :cond_b
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7

    sget-object v0, Lcom/iflytek/sunflower/config/a;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0, p2}, Lcom/iflytek/sunflower/c/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/iflytek/sunflower/a/c;

    invoke-direct {v1}, Lcom/iflytek/sunflower/a/c;-><init>()V

    sget-object v2, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/iflytek/sunflower/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/sunflower/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/iflytek/sunflower/a/c;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/iflytek/sunflower/a/c;->c:J

    invoke-static {v1}, Lcom/iflytek/sunflower/f;->a(Lcom/iflytek/sunflower/a/c;)V

    :cond_24
    new-instance v0, Lcom/iflytek/sunflower/task/g;

    iget-object v1, p0, Lcom/iflytek/sunflower/c/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/sunflower/task/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/sunflower/task/g;->a()V

    iget-object v0, p0, Lcom/iflytek/sunflower/c/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/iflytek/sunflower/c/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_37
    return-void
.end method
