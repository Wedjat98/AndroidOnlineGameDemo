.class public Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
.super Ljava/lang/Object;
.source "CurrentPlaceFeedbackRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    }
.end annotation


# instance fields
.field private final placeId:Ljava/lang/String;

.field private final tracking:Ljava/lang/String;

.field private final wasHere:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V
    .registers 3
    .param p1, "b"    # Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    # getter for: Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->tracking:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$0(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    .line 35
    # getter for: Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->placeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$1(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    .line 36
    # getter for: Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->wasHere:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$2(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getPlaceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    return-object v0
.end method

.method public wasHere()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    return-object v0
.end method
