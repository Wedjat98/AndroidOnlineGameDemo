.class final Lcom/tencent/bugly/crashreport/crash/d$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/d;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/d;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/d$1;->a:Lcom/tencent/bugly/crashreport/crash/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/d$1;->a:Lcom/tencent/bugly/crashreport/crash/d;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/d;->a(Lcom/tencent/bugly/crashreport/crash/d;)V

    .line 50
    return-void
.end method
