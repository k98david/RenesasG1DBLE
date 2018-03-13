
typedef enum{
	QKeyNothing,
	QKey1Pressed,
	QKey1LongPressed,
	QKey2Pressed,
	QKey2LongPressed
}QKeyState_t;


bool gKeyPressed1=false;
bool gKeyPressed2=false;
uint16_t gDebounceCount=0;

QKeyState_t gKeyState=QKeyNothing;


