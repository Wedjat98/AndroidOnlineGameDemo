.class public Lcom/facebook/share/model/ShareCameraEffectContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareCameraEffectContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareCameraEffectContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/ShareCameraEffectContent;",
        "Lcom/facebook/share/model/ShareCameraEffectContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareCameraEffectContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arguments:Lcom/facebook/share/model/CameraEffectArguments;

.field private effectId:Ljava/lang/String;

.field private textures:Lcom/facebook/share/model/CameraEffectTextures;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Lcom/facebook/share/model/ShareCameraEffectContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareCameraEffectContent$1;-><init>()V

    .line 101
    sput-object v0, Lcom/facebook/share/model/ShareCameraEffectContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectArguments$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->build()Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 59
    new-instance v0, Lcom/facebook/share/model/CameraEffectTextures$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectTextures$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/CameraEffectTextures$Builder;->build()Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareCameraEffectContent$Builder;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 49
    # getter for: Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->effectId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$2(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    .line 50
    # getter for: Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->arguments:Lcom/facebook/share/model/CameraEffectArguments;
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$3(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectArguments;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    .line 51
    # getter for: Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->textures:Lcom/facebook/share/model/CameraEffectTextures;
    invoke-static {p1}, Lcom/facebook/share/model/ShareCameraEffectContent$Builder;->access$4(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)Lcom/facebook/share/model/CameraEffectTextures;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;Lcom/facebook/share/model/ShareCameraEffectContent;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareCameraEffectContent;-><init>(Lcom/facebook/share/model/ShareCameraEffectContent$Builder;)V

    return-void
.end method


# virtual methods
.method public getArguments()Lcom/facebook/share/model/CameraEffectArguments;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    return-object v0
.end method

.method public getEffectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTextures()Lcom/facebook/share/model/CameraEffectTextures;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->effectId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->arguments:Lcom/facebook/share/model/CameraEffectArguments;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;->textures:Lcom/facebook/share/model/CameraEffectTextures;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
