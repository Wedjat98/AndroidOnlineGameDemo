.class public Lcom/facebook/share/model/CameraEffectArguments;
.super Ljava/lang/Object;
.source "CameraEffectArguments.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectArguments$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/CameraEffectArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final params:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$1;-><init>()V

    .line 105
    sput-object v0, Lcom/facebook/share/model/CameraEffectArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/CameraEffectArguments$Builder;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    # getter for: Lcom/facebook/share/model/CameraEffectArguments$Builder;->params:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectArguments$Builder;->access$2(Lcom/facebook/share/model/CameraEffectArguments$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;Lcom/facebook/share/model/CameraEffectArguments;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectArguments;-><init>(Lcom/facebook/share/model/CameraEffectArguments$Builder;)V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/share/model/CameraEffectArguments;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->params:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method
