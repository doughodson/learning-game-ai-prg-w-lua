#include "framework/include/SandboxApplication.hpp"

class MySandBox : public SandboxApplication
{
public:
	MySandBox(void);

    virtual ~MySandBox(void);

    virtual void Initialize();

    virtual void Update();

private:
	MySandBox(const MySandBox&);

};

