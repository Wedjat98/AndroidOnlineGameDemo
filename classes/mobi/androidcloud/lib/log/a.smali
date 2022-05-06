.class public final Lmobi/androidcloud/lib/log/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public L(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public isTraceEnabled()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lmobi/androidcloud/lib/log/a;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method
