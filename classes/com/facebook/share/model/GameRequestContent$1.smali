.class Lcom/facebook/share/model/GameRequestContent$1;
.super Ljava/lang/Object;
.source "GameRequestContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/GameRequestContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/share/model/GameRequestContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/GameRequestContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/GameRequestContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Lcom/facebook/share/model/GameRequestContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/GameRequestContent$1;->newArray(I)[Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    return-object v0
.end method
