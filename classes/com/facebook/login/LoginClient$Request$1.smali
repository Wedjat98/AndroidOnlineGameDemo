.class Lcom/facebook/login/LoginClient$Request$1;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginClient$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 544
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/LoginClient$Request;-><init>(Landroid/os/Parcel;Lcom/facebook/login/LoginClient$Request;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$Request$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/login/LoginClient$Request;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 549
    new-array v0, p1, [Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient$Request$1;->newArray(I)[Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0
.end method
