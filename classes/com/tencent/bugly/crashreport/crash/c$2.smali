.class final Lcom/tencent/bugly/crashreport/crash/c$2;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/c;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/c;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/c;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x64

    const/4 v4, 0x0

    .line 319
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_14

    .line 342
    :goto_13
    return-void

    .line 325
    :cond_14
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/crash/b;->a()Ljava/util/List;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 328
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 329
    int-to-long v6, v3

    cmp-long v1, v6, v8

    if-lez v1, :cond_48

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v2, v4

    .line 334
    :goto_36
    int-to-long v6, v2

    cmp-long v5, v6, v8

    if-gez v5, :cond_49

    .line 335
    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    move-object v1, v0

    .line 338
    :cond_49
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/crash/c;->o:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 v2, 0x0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    .line 341
    :cond_54
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/c$2;->a:Lcom/tencent/bugly/crashreport/crash/c;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/c;->b(Lcom/tencent/bugly/crashreport/crash/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_crash_lock"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_13
.end method
