.class public Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
.super Ljava/lang/Object;
.source "CurrentPlaceFeedbackRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private placeId:Ljava/lang/String;

.field private tracking:Ljava/lang/String;

.field private wasHere:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->tracking:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->wasHere:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;)V

    return-object v0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .registers 2
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->placeId:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setTracking(Ljava/lang/String;)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .registers 2
    .param p1, "tracking"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->tracking:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setWasHere(Z)Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    .registers 3
    .param p1, "wasHere"    # Z

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->wasHere:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method
