.class public Lcom/google/android/finsky/billing/CheckoutPurchase;
.super Ljava/lang/Object;
.source "CheckoutPurchase.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/CheckoutPurchase$2;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$Error;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;,
        Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;"
    }
.end annotation


# static fields
.field private static sValidTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$State;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAddInstrumentHintText:Ljava/lang/String;

.field private final mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

.field private mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private mCheckoutToken:Ljava/lang/String;

.field private mCompleteChallengeResponses:Landroid/os/Bundle;

.field private mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private mCompletingHasAcceptedTos:Z

.field private mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private mCompletingRiskHeader:Ljava/lang/String;

.field private mConfirmButtonText:Ljava/lang/String;

.field private mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mEligibleInstrumentFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

.field private final mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

.field private mInstrumentRequired:Z

.field private mInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCheckoutTokenRetry:Z

.field private mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

.field private mNumAuthRetries:I

.field private final mOfferType:I

.field private mPinAuthenticated:Z

.field private mPrepareChallengeResponses:Landroid/os/Bundle;

.field private mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

.field private mPreparingRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

.field private mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

.field private mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

.field private mTosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation
.end field

.field private mVolleyError:Lcom/android/volley/VolleyError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    .line 105
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v8

    const/4 v3, 0x4

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v8, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-static {}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->values()[Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v6, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    new-array v2, v7, [Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v5

    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/billing/InstrumentFactory;Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .parameter "dfeApi"
    .parameter "checkoutTokenAuthenticator"
    .parameter "instrumentFactory"
    .parameter "purchaseStatusListener"
    .parameter "doc"
    .parameter "offerType"

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 319
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    .line 320
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    .line 322
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 324
    iput-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    .line 325
    iput-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    .line 381
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 382
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    .line 383
    iput-object p3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    .line 384
    iput-object p4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    .line 385
    iput-object p5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 386
    iput p6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    .line 387
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    return-void
.end method

.method private cancelCurrentAction()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 704
    :cond_0
    return-void
.end method

.method private checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, p1, :cond_0

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This operation is only valid in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_0
    return-void
.end method

.method private checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 763
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->sValidTransitions:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition from state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    return-void
.end method

.method private checkTosAcceptance()V
    .locals 2

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    const-string v0, "TOSes to accept present, not all were accepted!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    :cond_0
    return-void
.end method

.method private getAuthTokenAsyncAndPerformRequest()V
    .locals 2

    .prologue
    .line 856
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;

    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p0, v0}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V

    .line 857
    return-void

    .line 856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V
    .locals 5
    .parameter "purchaseStatusResponse"

    .prologue
    const/4 v4, 0x0

    .line 637
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPurchaseStatusListener:Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$PurchaseStatusListener;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;Ljava/lang/String;)V

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasRejectedInstrument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 644
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->MIN_ADDRESS_PURCHASE_LIMIT_EXCEEDED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v2, -0x1

    const v3, 0x7f07006e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 652
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 647
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->PURCHASE_FAILED:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 650
    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0
.end method

.method private pollStatus(Ljava/lang/String;)V
    .locals 2
    .parameter "purchaseStatusUrl"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/billing/CheckoutPurchase$1;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase;)V

    invoke-interface {v0, p1, v1, p0}, Lcom/google/android/finsky/api/DfeApi;->getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 634
    return-void
.end method

.method private populateFieldsFromPrepareResponse()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 944
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 945
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v7

    .line 946
    .local v7, optionList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 947
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 948
    .local v6, option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 949
    const-string v8, "Ignoring instrument [%s,id=%s]. Instrument %d family not supported."

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    const/4 v10, 0x2

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 955
    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 957
    .local v0, addInstrumentIcon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9, v6, v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->get(ILcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v4

    .line 959
    .local v4, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getSelectedInstrument()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 960
    iput-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 962
    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 964
    .end local v0           #addInstrumentIcon:Landroid/graphics/drawable/Drawable;
    .end local v4           #instrument:Lcom/google/android/finsky/billing/Instrument;
    .end local v6           #option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    :cond_2
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 966
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 970
    .local v1, eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    .line 971
    const/16 v8, 0x64

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setInstrumentFamily(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 973
    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 974
    const-string v8, "Ignoring eligible instrument family %d. Not supported."

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 978
    :cond_4
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getInstrumentFamily()I

    move-result v9

    invoke-virtual {v8, v9, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->updateStatus(ILcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    goto :goto_1

    .line 984
    .end local v1           #eligibleInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    :cond_5
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 985
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getEligibleInstrumentFamilyList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 986
    .local v5, instrumentFamily:I
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v8, v5}, Lcom/google/android/finsky/billing/InstrumentFactory;->isRegistered(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 987
    const-string v8, "Ignoring eligible instrument family %d. Not supported."

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 991
    :cond_6
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 994
    .end local v5           #instrumentFamily:I
    :cond_7
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 995
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 999
    iput-boolean v12, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    .line 1004
    :cond_8
    :goto_3
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1005
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    .line 1008
    :cond_9
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 1009
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1015
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1016
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1017
    .local v2, html:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    new-instance v9, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    invoke-direct {v9, p0, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1000
    .end local v2           #html:Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1001
    iget-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v8}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getAddInstrumentPromptHtml()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    goto :goto_3

    .line 1019
    :cond_b
    return-void
.end method

.method private queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V
    .locals 18
    .parameter "instrument"

    .prologue
    .line 823
    if-eqz p1, :cond_3

    .line 824
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 825
    .local v5, additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/google/android/finsky/utils/Utils;->mapFromBundleStrings(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 826
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    if-eqz v1, :cond_2

    .line 828
    const-string v1, "pcauth"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/Instrument;->getCheckoutOption()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    move-result-object v16

    .line 838
    .local v16, checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/billing/Instrument;->getCompleteParams()Ljava/util/Map;

    move-result-object v17

    .line 839
    .local v17, completeParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_1

    .line 840
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 842
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getEncodedAdjustedCart()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-interface/range {v1 .. v10}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 852
    .end local v5           #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #checkoutOption:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .end local v17           #completeParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 830
    .restart local v5       #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->lastGaiaAuthTimestamp:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v2}, Lcom/google/android/finsky/api/DfeApi;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/google/android/finsky/config/G;->gaiaAuthValidityMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v1, v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 834
    const-string v1, "pcauth"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 846
    .end local v5           #additionalParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->isInstrumentRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 847
    const-string v1, "Instrument is required, but completing request does not have any"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    move-object/from16 v14, p0

    move-object/from16 v15, p0

    invoke-interface/range {v6 .. v15}, Lcom/google/android/finsky/api/DfeApi;->completePurchase(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method private queuePreparingRequest()V
    .locals 12

    .prologue
    .line 798
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 799
    .local v8, additionalParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAllPrepareParameters()Ljava/util/Map;

    move-result-object v11

    .line 800
    .local v11, instrumentParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_0

    .line 801
    invoke-interface {v8, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->mapFromBundleStrings(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 804
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v4, v4, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v5, v5, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget v6, v6, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget-object v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    iget-object v7, v7, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    move-object v9, p0

    move-object v10, p0

    invoke-interface/range {v0 .. v10}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v6, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mOfferType:I

    iget-object v7, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    move-object v9, p0

    move-object v10, p0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private retryLastRequest()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in state PREPARING or COMPLETING for retry."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 865
    return-void
.end method

.method private setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"
    .parameter "volleyError"

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 692
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    .line 693
    const-string v0, "type=%s, code=%d, message=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->type:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;->message:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 695
    return-void
.end method

.method private transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 714
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkStateTransition(Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 715
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->cancelCurrentAction()V

    .line 716
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 717
    .local v0, from:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 718
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 721
    :cond_0
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$2;->$SwitchMap$com$google$android$finsky$billing$CheckoutPurchase$State:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 746
    :goto_0
    :pswitch_0
    return-void

    .line 723
    :pswitch_1
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 724
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    .line 725
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    goto :goto_0

    .line 733
    :pswitch_2
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 734
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getAuthTokenAsyncAndPerformRequest()V

    goto :goto_0

    .line 740
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->pollStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public answerChallenge(Landroid/os/Bundle;)V
    .locals 3
    .parameter "challengeResponse"

    .prologue
    .line 592
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v1, v2, :cond_0

    .line 594
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 598
    .local v0, challenges:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 599
    return-void

    .line 596
    .end local v0           #challenges:Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public areAllTossesAccepted()Z
    .locals 3

    .prologue
    .line 779
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;

    .line 780
    .local v1, tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    iget-boolean v2, v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;->mIsAccepted:Z

    if-nez v2, :cond_0

    .line 781
    const/4 v2, 0x0

    .line 784
    .end local v1           #tos:Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public attach(Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 465
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;->onStateChange(Lcom/google/android/finsky/billing/CheckoutPurchase;Lcom/google/android/finsky/billing/CheckoutPurchase$State;Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 466
    return-void
.end method

.method public complete(Lcom/google/android/finsky/billing/Instrument;Ljava/lang/String;)V
    .locals 3
    .parameter "instrument"
    .parameter "riskHeader"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-eq v0, v1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot complete in current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkTosAcceptance()V

    .line 616
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 620
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->areAllTossesAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingHasAcceptedTos:Z

    .line 621
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 622
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 623
    return-void

    .line 620
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mListener:Lcom/google/android/finsky/billing/CheckoutPurchase$Listener;

    .line 470
    return-void
.end method

.method public getAddInstrumentHintText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    return-object v0
.end method

.method public getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutInfo:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getConfirmButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInstrument()Lcom/google/android/finsky/billing/Instrument;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 526
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mDefaultInstrument:Lcom/google/android/finsky/billing/Instrument;

    return-object v0
.end method

.method public getEligibleInstrumentFamilies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 554
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mEligibleInstrumentFamilies:Ljava/util/List;

    return-object v0
.end method

.method public getError()Lcom/google/android/finsky/billing/CheckoutPurchase$Error;
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    return-object v0
.end method

.method public getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;
    .locals 3
    .parameter "instrumentId"

    .prologue
    .line 516
    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/Instrument;

    .line 517
    .local v1, instrument:Lcom/google/android/finsky/billing/Instrument;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    .end local v1           #instrument:Lcom/google/android/finsky/billing/Instrument;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstruments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/Instrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstruments:Ljava/util/List;

    return-object v0
.end method

.method public getRejectedInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 659
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    return-object v0
.end method

.method public getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    return-object v0
.end method

.method public getToses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/CheckoutPurchase$Tos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mTosList:Ljava/util/List;

    return-object v0
.end method

.method public getVolleyError()Lcom/android/volley/VolleyError;
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->checkInState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 669
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mVolleyError:Lcom/android/volley/VolleyError;

    return-object v0
.end method

.method public hasAddInstrumentHintText()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mAddInstrumentHintText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConfirmButtonText()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mConfirmButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstrumentRequired()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mInstrumentRequired:Z

    return v0
.end method

.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "authToken"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    .line 1025
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$2;->$SwitchMap$com$google$android$finsky$billing$CheckoutPurchase$State:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1033
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know which request to send for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queuePreparingRequest()V

    .line 1036
    :goto_0
    return-void

    .line 1030
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->queueCompletingRequest(Lcom/google/android/finsky/billing/Instrument;)V

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/android/volley/AuthFailureError;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not retrieve Checkout auth token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/AuthFailureError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    new-instance v1, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v2, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v4, :cond_0

    const v0, 0x7f07005e

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 1045
    return-void

    .line 1041
    :cond_0
    const v0, 0x7f07005f

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 10
    .parameter "error"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 870
    instance-of v3, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v3, :cond_2

    .line 871
    const-string v3, "Auth failure. Retry [n=%d,max=%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 872
    check-cast v0, Lcom/android/volley/AuthFailureError;

    .line 873
    .local v0, authFailureError:Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->getResolutionIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 874
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 890
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_0
    :goto_0
    return-void

    .line 875
    .restart local v0       #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_1
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    if-ge v3, v9, :cond_0

    .line 877
    iget v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 878
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_0

    .line 881
    .end local v0           #authFailureError:Lcom/android/volley/AuthFailureError;
    :cond_2
    const-string v3, "%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 883
    .local v1, errorType:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;
    instance-of v3, p1, Lcom/android/volley/ServerError;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/volley/NetworkError;

    if-nez v3, :cond_3

    instance-of v3, p1, Lcom/android/volley/TimeoutError;

    if-eqz v3, :cond_4

    .line 885
    :cond_3
    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    .line 887
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, message:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-direct {v3, v1, v6, v2}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const v5, 0x7f07005e

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 895
    iput v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    .line 896
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    iget-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    if-eqz v0, :cond_0

    .line 898
    const-string v0, "Checkout token still invalid after having sent a fresh one."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    .line 941
    :goto_0
    return-void

    .line 903
    :cond_0
    const-string v0, "Checkout token invalid, invalidating and retrying request."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 905
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->retryLastRequest()V

    goto :goto_0

    .line 908
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mIsCheckoutTokenRetry:Z

    .line 909
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_5

    .line 910
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 911
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 914
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->IAB_PERMISSION_ERROR:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 916
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromPrepareResponse()V

    .line 918
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_0

    .line 920
    :cond_4
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 923
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v0, v1, :cond_9

    .line 924
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 925
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 926
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETE_CHALLENGE_REQUIRED:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 936
    :goto_1
    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    goto :goto_0

    .line 927
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 928
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)V

    goto :goto_1

    .line 929
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 930
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING_POLLING_STATUS:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    goto :goto_1

    .line 932
    :cond_8
    const-string v0, "BuyResponse without purchaseStatusUrl."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    new-instance v0, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v1, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->NETWORK_OR_SERVER:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;II)V

    invoke-direct {p0, v0, v3}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_1

    .line 938
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received network response while in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getState()Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/CheckoutPurchase;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->transitionToState(Lcom/google/android/finsky/billing/CheckoutPurchase$State;)V

    .line 481
    return-void
.end method

.method public resumeFromSavedState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 423
    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    move-result-object v2

    .line 424
    .local v2, restoredState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;
    const-string v3, "error"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    .line 425
    const-string v3, "iab_parameters"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/IabParameters;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 427
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->PREPARING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v2, v3, :cond_0

    .line 428
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->INIT:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    .line 429
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->prepare()V

    .line 461
    :goto_0
    return-void

    .line 431
    :cond_0
    sget-object v3, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->COMPLETING:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    if-ne v2, v3, :cond_1

    .line 433
    new-instance v3, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    sget-object v4, Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;->UNKNOWN:Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;

    const/4 v5, -0x1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    const v7, 0x7f070060

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/finsky/billing/CheckoutPurchase$Error;-><init>(Lcom/google/android/finsky/billing/CheckoutPurchase$ErrorType;ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/finsky/billing/CheckoutPurchase;->setError(Lcom/google/android/finsky/billing/CheckoutPurchase$Error;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 437
    :cond_1
    const-string v3, "prepare_response"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    const-string v3, "prepare_response"

    invoke-static {p1, v3}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 439
    invoke-direct {p0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->populateFieldsFromPrepareResponse()V

    .line 441
    :cond_2
    const-string v3, "instrument_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 442
    const-string v3, "instrument_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, instrumentId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getInstrument(Ljava/lang/String;)Lcom/google/android/finsky/billing/Instrument;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    .line 444
    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-nez v3, :cond_3

    .line 445
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find instrument with persisted ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    .end local v0           #instrumentId:Ljava/lang/String;
    :cond_3
    const-string v3, "risk_header"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    const-string v3, "risk_header"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    .line 452
    :cond_4
    const-string v3, "rejected_instrument"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    const-string v3, "rejected_instrument"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/ParcelableProto;

    .line 455
    .local v1, rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 457
    .end local v1           #rejectedInstrumentParcelableProto:Lcom/google/android/finsky/utils/ParcelableProto;,"Lcom/google/android/finsky/utils/ParcelableProto<Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;>;"
    :cond_5
    const-string v3, "pin_authenticated"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 458
    const-string v3, "prepare_challenge_responses"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    .line 459
    const-string v3, "complete_challenge_responses"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    .line 460
    iput-object v2, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    goto/16 :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 391
    const-string v0, "state"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mState:Lcom/google/android/finsky/billing/CheckoutPurchase$State;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/CheckoutPurchase$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "error"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mError:Lcom/google/android/finsky/billing/CheckoutPurchase$Error;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    const-string v0, "num_auth_retries"

    iget v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mNumAuthRetries:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v0, "checkout_token"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCheckoutToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "pin_authenticated"

    iget-boolean v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "iab_parameters"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_1

    .line 400
    const-string v0, "prepare_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    if-eqz v0, :cond_2

    .line 404
    const-string v0, "complete_response"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteResponse:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    if-eqz v0, :cond_3

    .line 408
    const-string v0, "instrument_id"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingInstrument:Lcom/google/android/finsky/billing/Instrument;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/Instrument;->getInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 411
    const-string v0, "risk_header"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompletingRiskHeader:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    if-eqz v0, :cond_5

    .line 414
    const-string v0, "rejected_instrument"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mRejectedInstrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 417
    :cond_5
    const-string v0, "prepare_challenge_responses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPrepareChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 418
    const-string v0, "complete_challenge_responses"

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mCompleteChallengeResponses:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 419
    return-void
.end method

.method public setDevicePinAuthenticated()V
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPinAuthenticated:Z

    .line 684
    return-void
.end method

.method public setIabParameters(Lcom/google/android/finsky/billing/IabParameters;)V
    .locals 0
    .parameter "iabParameters"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckoutPurchase;->mPreparingCompletingIabParameters:Lcom/google/android/finsky/billing/IabParameters;

    .line 564
    return-void
.end method
